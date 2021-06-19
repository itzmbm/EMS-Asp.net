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
            
            string constr = ConfigurationManager.ConnectionStrings["empConnectionString"].ToString();
            // connection string  
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            {
                //jobid loading
                SqlCommand com = new SqlCommand("select * from jobdetails", con);
                // table name   
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // fill dataset  
                jid.DataTextField = ds.Tables[0].Columns["jobid"].ToString(); // text field name of table dispalyed in dropdown       
                jid.DataValueField = ds.Tables[0].Columns["jobid"].ToString();
                // to retrive specific  textfield name   
                jid.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
                jid.DataBind();
            }

            {
                //departid binding
                SqlCommand com = new SqlCommand("select * from deptdetails", con);
                // table name   
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                da.Fill(ds);  // fill dataset  
                deptid.DataTextField = ds.Tables[0].Columns["deptid"].ToString(); // text field name of table dispalyed in dropdown       
                deptid.DataValueField = ds.Tables[0].Columns["deptid"].ToString();
                // to retrive specific  textfield name   
                deptid.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
                deptid.DataBind();
            }


        }

       

        protected void Add_Click(object sender, EventArgs e)
        {
           
                String eid = empid.Text;
                String ename = empname.Text;
                String mail = email.Text;
                int phoneno = int.Parse(phone.Text);
                String hired = hiredate.Text;
                String mngid = mid.Text;
                String dptid = deptid.Text;
                String jobid = jid.Text;
                String gen = gender.Text;
                String pwd = empid.Text;




                string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
                SqlConnection cnn = new SqlConnection(ConnectionString);
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[empdetails]
           ([empid]
           ,[empname]
           ,[email]
           ,[phoneno]
           ,[hiredate]
           ,[mngid]
           ,[deptid]
           ,[jobid]
           ,[gender]
           ,[password])
     VALUES
           ('" + eid + "','" + ename + "','" + mail + "','" + phoneno + "','" + hired + "','" + mngid + "','" + dptid + "','" + jobid + "','" + gen + "','" + pwd + "')", cnn);
                try
                {
                    cnn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('data inserted')</script>");
                    cnn.Close();
                }
            
            catch (SqlException ex)
            {
                if (ex.Number == 2627)
                {
                    Response.Write("<script>alert('emp id already exists please click on update')</script>");
                }
                else throw;
            }
        }


    protected void Update_Click(object sender, EventArgs e)
        {

        }

        protected void Delete_Click(object sender, EventArgs e)
        {

        }
    }
}