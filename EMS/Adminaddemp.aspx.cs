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
    public partial class Adminaddemp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True");
                SqlCommand cmd = new SqlCommand("select * from deptdetails", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                deptid.DataSource = dt;
                deptid.DataBind();
                SqlCommand cmd1 = new SqlCommand("select * from jobdetails", con);
                SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sda1.Fill(dt1);
                jid.DataSource = dt1;
                jid.DataBind();
            }
        }

        protected void Add_Click(object sender, EventArgs e)
        {

            string eid = empid.Text;
            string ename = empname.Text;
            string mail = email.Text;
            int phoneno = int.Parse(phone.Text);
            DateTime hired = Convert.ToDateTime(hiredate.Text);
            string mngid = mid.Text;
            string dptid = deptid.Text;
            string jobid = jid.Text;
            string gen = gender.Text;
            string pwd = empid.Text;
            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[empdetails]
([empid],[empname],[email],[phoneno],[hiredate],[mngid],[deptid],[jobid],[gender],[password])
VALUES
(@empid,@empname,@email,@phoneno,@hiredate,@mngid,@deptid,@jobid,@gender,@password)", cnn);
            cmd.Parameters.AddWithValue("@empid", eid);
            cmd.Parameters.AddWithValue("@empname", ename);
            cmd.Parameters.AddWithValue("@email", mail);
            cmd.Parameters.AddWithValue("@phoneno", phoneno);
            cmd.Parameters.AddWithValue("@hiredate", hired);
            cmd.Parameters.AddWithValue("@mngid", mngid);
            cmd.Parameters.AddWithValue("@deptid", dptid);
            cmd.Parameters.AddWithValue("@jobid", jobid);
            cmd.Parameters.AddWithValue("@gender", gen);
            cmd.Parameters.AddWithValue("@password", pwd);

            try
            {
                cnn.Open();
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data inserted')</script>");
                cnn.Close();
            }
            catch (SqlException ex)
            {
                if (ex.Number == 2627)
                {
                    Response.Write("<script>alert('Emp id already exists please click on update')</script>");
                }
                else throw;
            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            string eid = empid.Text;
            string ename = empname.Text;
            string mail = email.Text;
            int phoneno = int.Parse(phone.Text);
            DateTime hired = Convert.ToDateTime(hiredate.Text);
            string mngid = mid.Text;
            string dptid = deptid.Text;
            string jobid = jid.Text;
            string gen = gender.Text;
            
            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            cnn.Open();
            SqlCommand check_User_ID = new SqlCommand("SELECT * FROM empdetails WHERE ([empid] = @eid)", cnn);
            check_User_ID.Parameters.AddWithValue("@eid", eid);

            SqlDataReader reader = check_User_ID.ExecuteReader();

            check_User_ID.Dispose();
            if (reader.HasRows)
            {
                //User Exists
                reader.Close();

                //TODO use parameters 
                SqlCommand cmd = new SqlCommand(@"Update [dbo].[empdetails]
            SET [empid]=@empid,[empname]=@empname,[email]=@email,[phoneno]=@phoneno,[hiredate]=@hiredate,[mngid]=@mngid,[deptid]=@deptid,[jobid]=@jobid,[gender]=@gender WHERE [empid] = @empid", cnn);
                cmd.Parameters.AddWithValue("@empid", eid);
                cmd.Parameters.AddWithValue("@empname", ename);
                cmd.Parameters.AddWithValue("@email", mail);
                cmd.Parameters.AddWithValue("@phoneno", phoneno);
                cmd.Parameters.AddWithValue("@hiredate", hired);
                cmd.Parameters.AddWithValue("@mngid", mngid);
                cmd.Parameters.AddWithValue("@deptid", dptid);
                cmd.Parameters.AddWithValue("@jobid", jobid);
                cmd.Parameters.AddWithValue("@gender", gen);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Updated')</script>");
                cmd.Dispose();

            }
            else
            {
                //User NOT Exists
                Response.Write("<script>alert('Emp-ID does not exist')</script>");
            }
            cnn.Close();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            string eid = empid.Text;
            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            cnn.Open();
            SqlCommand check_User_ID = new SqlCommand("SELECT * FROM empdetails WHERE ([empid] = @eid)", cnn);
            check_User_ID.Parameters.AddWithValue("@eid", eid);
            SqlDataReader reader = check_User_ID.ExecuteReader();
            check_User_ID.Dispose();
            if (reader.HasRows)
            {
                //User Exists
                reader.Close();
                SqlCommand cmd = new SqlCommand(@"DELETE FROM [dbo].[empdetails] WHERE [empid]=@empid", cnn);
                cmd.Parameters.AddWithValue("@empid", eid);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Deleted Successfully')</script>");
                cmd.Dispose();
            }
            else
            {
                //User NOT Exists
                Response.Write("<script>alert('Emp-ID does not exist')</script>");
            }
            cnn.Close();
        }

        protected void Searchbtn_Click(object sender, EventArgs e)
        {
            EmployeeDataContext emp = new EmployeeDataContext();
            empdetails employee = (from s in emp.empdetails where s.empid.ToString() == search.Text select s).FirstOrDefault();
            if (employee == null)
            {
                Response.Write("<script>alert('Emp-ID does not exist')</script>");
                empid.Text = "";
                empname.Text = "";
                email.Text = "";
                phone.Text = "";
                hiredate.Text = "";
                mid.Text = "";
                gender.ClearSelection();
            }
            else
            {
                Response.Write("<script>alert('Emp-ID exists')</script>");
                empid.Text = employee.empid;
                empname.Text = employee.empname;
                email.Text = employee.email;
                phone.Text = employee.phoneno.ToString();
                hiredate.Text = Convert.ToDateTime(employee.hiredate).Date.ToString("yyyy-MM-dd");
                mid.Text = employee.mngid;
                deptid.Text = employee.deptid;
                jid.Text = employee.jobid;
                gender.Text = employee.gender;
            }
        }
    }
}