using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EMS
{
    public partial class TMleavereq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }


        }
        protected void SubmitClick(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                RadioButton statusApprove = (row.Cells[3].FindControl("RadioButton1") as RadioButton);
                RadioButton statusReject = (row.Cells[3].FindControl("RadioButton2") as RadioButton);
              
                string leaveid = (row.Cells[1].Text);
                string eid = (row.Cells[2].Text);
                string ltype = (row.Cells[7].Text);
                int nodays = int.Parse(row.Cells[6].Text);
                if (statusApprove.Checked)
                {
                    updaterow(leaveid, "Approved",eid,ltype,nodays);
                }
                else if (statusReject.Checked)
                {
                    updaterow(leaveid, "Rejected",eid, ltype, nodays);
                }
                else
                {
                    updaterow(leaveid, "Pending",eid,ltype, nodays);
                }
            }
            Response.Write("<script>alert('Leave Status Updated')</script>");
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
        private void updaterow(string leaveid, string status,string empid,string ltype,int nodays)
        {
            int cleave = 0;
            int eleave = 0;
            int sleave = 0;
            int mleave = 0;
            int pleave = 0;
            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand(@"Update [dbo].[empleaves]
            SET [status] = @status WHERE [leaveid] = @leaveid", cnn);
            cmd.Parameters.AddWithValue("@leaveid", leaveid);
            cmd.Parameters.AddWithValue("@status", status);
            if (status == "Rejected")
            {
                EmployeeDataContext emp = new EmployeeDataContext();
                empleavetype el = (from s in emp.empleavetypes where s.empid.ToString() == empid select s).FirstOrDefault();
                if (el == null)
                {

                }
                else
                {
                    cleave = el.casual;
                    eleave = el.earned;
                    sleave = el.sick;
                    mleave = el.maternity;
                    pleave = el.paternity;
                }
                if (ltype == "Casual")
                {
                    cleave += nodays;
                    SqlCommand cmd1 = new SqlCommand(@"Update [dbo].[empleavetype]
            SET [casual] = @casual WHERE [empid] = @empid", cnn);
                    cmd1.Parameters.AddWithValue("@empid", empid);
                    cmd1.Parameters.AddWithValue("@casual", cleave);
                    cmd1.ExecuteNonQuery();
                    cmd1.Dispose();
                }
                if (ltype == "Earned")
                {
                    SqlCommand cmd1 = new SqlCommand(@"Update [dbo].[empleavetype]
            SET [earned] = @earned WHERE [empid] = @empid", cnn);
                    eleave += nodays;
                    cmd1.Parameters.AddWithValue("@empid", empid);
                    cmd1.Parameters.AddWithValue("@earned", eleave);
                    cmd1.ExecuteNonQuery();
                    cmd1.Dispose();
                }
                if (ltype == "Sick")
                {
                    SqlCommand cmd1 = new SqlCommand(@"Update [dbo].[empleavetype]
            SET [sick] = @sick WHERE [empid] = @empid", cnn);
                    sleave += nodays;
                    cmd1.Parameters.AddWithValue("@empid", empid);
                    cmd1.Parameters.AddWithValue("@sick", sleave);
                    cmd1.ExecuteNonQuery();
                    cmd1.Dispose();

                }
                if (ltype == "Maternity")
                {
                    SqlCommand cmd1 = new SqlCommand(@"Update [dbo].[empleavetype]
            SET [maternity] = @maternity WHERE [empid] = @empid", cnn);
                    mleave += nodays;
                    cmd1.Parameters.AddWithValue("@empid", empid);
                    cmd1.Parameters.AddWithValue("@maternity", mleave);
                    cmd1.ExecuteNonQuery();
                    cmd1.Dispose();
                }
                if (ltype == "Paternity")
                {
                    SqlCommand cmd1 = new SqlCommand(@"Update [dbo].[empleavetype]
            SET [paternity] = @paternity WHERE [empid] = @empid", cnn);
                    pleave += nodays;
                    cmd1.Parameters.AddWithValue("@empid", empid);
                    cmd1.Parameters.AddWithValue("@paternity", pleave);
                    cmd1.ExecuteNonQuery();
                    cmd1.Dispose();
                }
            }
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cnn.Close();
        }
    }
}