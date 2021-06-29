using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace EMS
{
    public partial class EMPapplyleave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            empid.Text = Convert.ToString(Session["eid"]);

            if (Session["eid"] != null)
            {

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            EmployeeDataContext emp = new EmployeeDataContext();
            empdetails employee = (from s in emp.empdetails where s.empid.ToString() == empid.Text select s).FirstOrDefault();
            if (employee == null)
            {

            }
            else
            {
                empid.Text = employee.empid;
                empname.Text = employee.empname;
                mngid.Text = employee.mngid;
            }
            if (!IsPostBack)
            {
                DataTable dt = (SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
                BindGrid(dt, true);

                DataTable dt2 = new DataTable();
                for (int i = 0; i <= dt.Rows.Count; i++)
                {
                    dt2.Columns.Add("", typeof(string));
                }
                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    dt2.Rows.Add();
                    dt2.Rows[i][0] = dt.Columns[i].ColumnName;
                }
                for (int i = 0; i < dt.Columns.Count; i++)
                {
                    for (int j = 0; j < dt.Rows.Count; j++)
                    {
                        dt2.Rows[i][j + 1] = dt.Rows[j][i];
                    }
                }
                BindGrid(dt2, false);
            }

            

        }
        
        private void BindGrid(DataTable dt, bool rotate)
        {
            this.GridView1.DataSourceID = "";
            GridView1.ShowHeader = !rotate;
            this.GridView1.DataSource = dt;
            GridView1.DataBind();
            if (rotate)
            {
                foreach (GridViewRow row in GridView1.Rows)
                {
                    row.Cells[0].CssClass = "header";
                }
            }
        }
        protected void Clear_Click(object sender, EventArgs e)
        {
            From.Text = string.Empty;
            Till.Text = string.Empty;
            lt.Text = string.Empty;
            reason.Text = string.Empty;
            // so on youe all controls
        }
       
        protected void Apply_Click(object sender, EventArgs e)
        {
           
            string eid = empid.Text;
            string ename = empname.Text;
            string mid = mngid.Text;
            DateTime fd = Convert.ToDateTime(From.Text);
            DateTime td = Convert.ToDateTime(Till.Text);
            int diff = ((td.Date - fd.Date).Days)+1;
            int nod = diff;
            string ltype = lt.Text;
            string rsn = reason.Text;
            string status = "Pending";
            
            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            cnn.Open();
            SqlCommand check_User_ID = new SqlCommand("SELECT * FROM empleaves  WHERE ([empid] = @empid) and ([status]=@stat) and ([fromdate]=@fromdate) or ([tilldate]=@tilldate) ", cnn);
            check_User_ID.Parameters.AddWithValue("@empid", eid);
            check_User_ID.Parameters.AddWithValue("@fromdate", fd);
            check_User_ID.Parameters.AddWithValue("@tilldate", td);
            check_User_ID.Parameters.AddWithValue("@stat", status);
            SqlDataReader reader = check_User_ID.ExecuteReader();
            check_User_ID.Dispose();
            if (reader.HasRows)
            {
                //User Exists

                Response.Write("<script>alert('Leave already applied for these particular date')</script>");

            }
            else
            {
                //User NOT Exists
                reader.Close();
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[empleaves]
           ([empid],[empname],[mngid],[fromdate],[tilldate],[nod],[leavetype],[reason],[status])
VALUES
           (@empid,@empname,@mngid,@fromdate,@tilldate,@nodays,@lt,@reason,@stat)", cnn);
                cmd.Parameters.AddWithValue("@empid", eid);
                cmd.Parameters.AddWithValue("@empname", ename);
                cmd.Parameters.AddWithValue("@mngid", mid);
                cmd.Parameters.AddWithValue("@fromdate", fd);
                cmd.Parameters.AddWithValue("@tilldate", td);
                cmd.Parameters.AddWithValue("@nodays", nod);
                cmd.Parameters.AddWithValue("@lt", ltype);
                cmd.Parameters.AddWithValue("@reason", rsn);
                cmd.Parameters.AddWithValue("@stat", status);
                //check the days left in each 
                EmployeeDataContext emp = new EmployeeDataContext();
                
                empleavetype employee = (from s in emp.empleavetypes where s.empid.ToString() == empid.Text select s).FirstOrDefault();
                int daysleftc = employee.casual;
                int dayslefte = employee.earned;
                int dayslefts = employee.sick;
                int daysleftm = employee.maternity;
                int daysleftp = employee.paternity;
                switch (ltype)
                {
                    case "Casual":
                        if (daysleftc != 0)
                        {
                            int temp = daysleftc - nod;// recalculate casual leaves left after applying the leave 
                            if (daysleftc >= nod)
                            {
                                cmd.ExecuteNonQuery();
                                cmd.Dispose();
                                SqlCommand update = new SqlCommand(@"Update [dbo].[empleavetype]
            SET [casual] = @casual WHERE [empid] = @empid", cnn);
                                update.Parameters.AddWithValue("@empid", eid);
                                update.Parameters.AddWithValue("@casual", temp);
                                update.ExecuteNonQuery();
                                update.Dispose();
                                Response.Write("<script>alert('Leave Applied')</script>");
                            }
                            else
                            {
                                Response.Write("<script>alert('No of days you applied for is more than your casual leaves left')</script>");
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('0 Casual leaves left')</script>");
                        }


                        break;
                    case "Earned":

                        if (dayslefte != 0)
                        {
                            int temp = dayslefte - nod;// recalculate earned leaves left after applying the leave 
                            if (dayslefte >= nod)
                            {
                                cmd.ExecuteNonQuery();
                                cmd.Dispose();
                                SqlCommand update = new SqlCommand(@"Update [dbo].[empleavetype]
            SET [earned] = @earned WHERE [empid] = @empid", cnn);
                                update.Parameters.AddWithValue("@empid", eid);
                                update.Parameters.AddWithValue("@earned", temp);
                                update.ExecuteNonQuery();
                                update.Dispose();
                                Response.Write("<script>alert('Leave Applied')</script>");
                            }
                            else
                            {
                                Response.Write("<script>alert('No of days you applied for is more than your earned leaves left')</script>");
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('0 Earned leaves left')</script>");
                        }
                        break;
                    case "Sick":
                        if (dayslefts != 0)
                        {
                            int temp = dayslefts - nod;// recalculate sick leaves left after applying the leave 
                            if (dayslefts >= nod)
                            {
                                cmd.ExecuteNonQuery();
                                cmd.Dispose();
                                SqlCommand update = new SqlCommand(@"Update [dbo].[empleavetype]
            SET [sick] = @sick WHERE [empid] = @empid", cnn);
                                update.Parameters.AddWithValue("@empid", eid);
                                update.Parameters.AddWithValue("@sick", temp);
                                update.ExecuteNonQuery();
                                update.Dispose();
                                Response.Write("<script>alert('Leave Applied')</script>");
                            }
                            else
                            {
                                Response.Write("<script>alert('No of days you applied for is more than your sick leaves left')</script>");
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('0 Sick leaves left')</script>");
                        }
                        break;
                    case "Maternity":
                        if (daysleftm != 0)
                        {
                            int temp = daysleftm - nod;// recalculate earned leaves left after applying the leave 
                            if (daysleftm >= nod)
                            {
                                cmd.ExecuteNonQuery();
                            cmd.Dispose();
                            SqlCommand update = new SqlCommand(@"Update [dbo].[empleavetype]
            SET [maternity] = @maternity WHERE [empid] = @empid", cnn);
                            update.Parameters.AddWithValue("@empid", eid);
                            update.Parameters.AddWithValue("@maternity", temp);
                            update.ExecuteNonQuery();
                            update.Dispose();
                            Response.Write("<script>alert('Leave Applied')</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('No of days you applied for is more than your sick leaves left')</script>");
                        }
                }
                        else
                        {
                            Response.Write("<script>alert('0 Maternity leaves left')</script>");
                        }
                        break;
                    case "Paternity":
                        if (daysleftp != 0)
                        {
                            int temp = daysleftp - nod;// recalculate earned leaves left after applying the leave 
                            if (daysleftp >= nod)
                            {
                                cmd.ExecuteNonQuery();
                            cmd.Dispose();
                            SqlCommand update = new SqlCommand(@"Update [dbo].[empleavetype]
            SET [paternity] = @paternity WHERE [empid] = @empid", cnn);
                            update.Parameters.AddWithValue("@empid", eid);
                            update.Parameters.AddWithValue("@paternity", temp);
                            update.ExecuteNonQuery();
                            update.Dispose();
                            Response.Write("<script>alert('Leave Applied')</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('No of days you applied for is more than your sick leaves left')</script>");
                        }
                }
                        else
                        {
                            Response.Write("<script>alert('You don't have any more Paternity leaves left')</script>");
                        }
                        break;
                    default:
                        Response.Write("<script>alert('Y')</script>");
                        break;
                }
            }
            cnn.Close();
           
        }

       
    }
}