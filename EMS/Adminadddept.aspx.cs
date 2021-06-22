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
    public partial class Adminadddept : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Add_Click(object sender, EventArgs e)
        {
            string deptid = did.Text;
            string deptname = dname.Text;
            string mngid = mid.Text;
            string loc = location.Text;

            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[deptdetails]
           ([deptid]
           ,[deptname]
           ,[mngid]
           ,[location])
     VALUES
           (@deptid,@deptname,@mngid,@location)", cnn);
            cmd.Parameters.AddWithValue("@deptid", deptid);
            cmd.Parameters.AddWithValue("@deptname", deptname);
            cmd.Parameters.AddWithValue("@mngid", mngid);
            cmd.Parameters.AddWithValue("@location", loc);
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
                    Response.Write("<script>alert('Dept-ID already exists please click on update')</script>");
                }
                else throw;
            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            string deptid = did.Text;
            string deptname = dname.Text;
            string mngid = mid.Text;
            string loc = location.Text;

            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            cnn.Open();
            SqlCommand check_User_ID = new SqlCommand("SELECT * FROM deptdetails WHERE ([deptid] = @deptid)", cnn);
            check_User_ID.Parameters.AddWithValue("@deptid", deptid);
            SqlDataReader reader = check_User_ID.ExecuteReader();
            check_User_ID.Dispose();
            if (reader.HasRows)
            {
                //User Exists
                reader.Close();
                SqlCommand cmd = new SqlCommand(@"Update [dbo].[deptdetails]
            SET [deptid] = @deptid,[deptname] = @deptname,[mngid] = @mngid,[location] = @location WHERE [deptid] = @deptid", cnn);
                cmd.Parameters.AddWithValue("@deptid", deptid);
                cmd.Parameters.AddWithValue("@deptname", deptname);
                cmd.Parameters.AddWithValue("@mngid", mngid);
                cmd.Parameters.AddWithValue("@location", loc);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Updated')</script>");
                cmd.Dispose();
            }
            else
            {
                //User NOT Exists
                Response.Write("<script>alert('Dept-ID does not exist')</script>");
            }
            cnn.Close();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            string deptid = did.Text;
            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            cnn.Open();
            SqlCommand check_User_ID = new SqlCommand("SELECT * FROM deptdetails WHERE ([deptid] = @deptid)", cnn);
            check_User_ID.Parameters.AddWithValue("@deptid", deptid);
            SqlDataReader reader = check_User_ID.ExecuteReader();

            check_User_ID.Dispose();
            if (reader.HasRows)
            {
                //User Exists
                reader.Close();
                SqlCommand cmd = new SqlCommand(@"DELETE FROM [dbo].[deptdetails] WHERE [deptid]=@deptid ", cnn);
                cmd.Parameters.AddWithValue("@deptid", deptid);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Deleted Successfully')</script>");
                cmd.Dispose();
            }
            else
            {
                //User NOT Exists
                Response.Write("<script>alert('Dept-ID does not exist')</script>");
            }
            cnn.Close();
        }

        protected void Searchbtn_Click(object sender, EventArgs e)
        {
            EmployeeDataContext emp = new EmployeeDataContext();
            deptdetails department = (from s in emp.deptdetails where s.deptid.ToString() == search.Text select s).FirstOrDefault();
            if (department == null)
            {
                Response.Write("<script>alert('Dept-ID does not exist')</script>");
                did.Text="";
                dname.Text="";
                mid.Text = "";
                location.Text="";
            }
            else
            {
                Response.Write("<script>alert('Dept-ID exists')</script>");
                did.Text = department.deptid;
                dname.Text = department.deptname;
                mid.Text = department.mngid;
                location.Text = department.location;
            }
        }

    }
}