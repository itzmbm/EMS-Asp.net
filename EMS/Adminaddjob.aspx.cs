using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace EMS
{
    public partial class Adminaddjob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Add_Click(object sender, EventArgs e)
        {

            string jobid = jid.Text;
            string jobtitle = jtitle.Text;
            int mnsal = int.Parse(minsal.Text);
            int mxsal = int.Parse(maxsal.Text);

            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[jobdetails]
           ([jobid]
           ,[jobtitle]
           ,[minsal]
           ,[maxsal])
     VALUES
           (@jobid,@jobtitle,@minsal,@maxsal)", cnn);
            cmd.Parameters.AddWithValue("@jobid", jobid);
            cmd.Parameters.AddWithValue("@jobtitle", jobtitle);
            cmd.Parameters.AddWithValue("@minsal", mnsal);
            cmd.Parameters.AddWithValue("@maxsal", mxsal);
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
                    Response.Write("<script>alert('Job-ID already exists please click on update')</script>");
                }
                else throw;
            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            string jobid = jid.Text;
            string jobtitle = jtitle.Text;
            int mnsal = int.Parse(minsal.Text);
            int mxsal = int.Parse(maxsal.Text);

            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            cnn.Open();
            SqlCommand check_User_ID = new SqlCommand("SELECT * FROM jobdetails WHERE ([jobid] = @jobid)", cnn);
            check_User_ID.Parameters.AddWithValue("@jobid", jobid);
            SqlDataReader reader = check_User_ID.ExecuteReader();
            check_User_ID.Dispose();
            if (reader.HasRows)
            {
                //User Exists
                reader.Close();
                SqlCommand cmd = new SqlCommand(@"Update [dbo].[jobdetails]
            SET [jobid] = @jobid,[jobtitle] = @jobtitle,[minsal] = @minsal,[maxsal] = @maxsal WHERE [jobid] = @jobid", cnn);

                cmd.Parameters.AddWithValue("@jobid", jobid);
                cmd.Parameters.AddWithValue("@jobtitle", jobtitle);
                cmd.Parameters.AddWithValue("@minsal", mnsal);
                cmd.Parameters.AddWithValue("@maxsal", mxsal);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Updated')</script>");
                cmd.Dispose();
            }
            else
            {
                //User NOT Exists
                Response.Write("<script>alert('Job-ID does not exist')</script>");
            }
            cnn.Close();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            string jobid = jid.Text;
            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            cnn.Open();
            SqlCommand check_User_ID = new SqlCommand("SELECT * FROM jobdetails WHERE ([jobid] = @jobid)", cnn);
            check_User_ID.Parameters.AddWithValue("@jobid", jobid);
            SqlDataReader reader = check_User_ID.ExecuteReader();
            check_User_ID.Dispose();
            if (reader.HasRows)
            {
                //User Exists
                reader.Close();
                SqlCommand cmd = new SqlCommand(@"DELETE FROM [dbo].[jobdetails] WHERE [jobid]=@jobid ", cnn);
                cmd.Parameters.AddWithValue("@jobid", jobid);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Deleted Successfully')</script>");
                cmd.Dispose();
            }
            else
            {
                //User NOT Exists
                Response.Write("<script>alert('Job-ID does not exist')</script>");
            }
            cnn.Close();
        }

        protected void Searchbtn_Click(object sender, EventArgs e)
        {
            EmployeeDataContext emp = new EmployeeDataContext();
            jobdetails job = (from s in emp.jobdetails where s.jobid.ToString() == search.Text select s).FirstOrDefault();
            if (job == null)
            {
                Response.Write("<script>alert('Job-ID does not exist')</script>");
                jid.Text = "";
                jtitle.Text = "";
                minsal.Text = "";
                maxsal.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Job-ID exists')</script>");
                jid.Text = job.jobid;
                jtitle.Text = job.jobtitle;
                minsal.Text = job.minsal.ToString();
                maxsal.Text = job.maxsal.ToString();
            }
        }
    }
}