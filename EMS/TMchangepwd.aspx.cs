using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EMS
{
    public partial class TMchangepwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            string tmid = (string)Session["tmid"];
            string cpwd = cp.Text;
            string npwd = np.Text;

            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(@"Update [dbo].[empdetails]
            SET [password] = @password WHERE [empid] = @empid", cnn);
            cmd.Parameters.AddWithValue("@empid", tmid);
            cmd.Parameters.AddWithValue("@password", npwd);
            EmployeeDataContext emp = new EmployeeDataContext();
            empdetails employee = (from s in emp.empdetails where s.empid.ToString() == tmid select s).FirstOrDefault();
            string pwd = employee.password;
            cnn.Open();
            if (pwd == cpwd)
            {
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Password changed Successfully')</script>");
                cmd.Dispose();
            }
            else
            {
                //User NOT Exists
                Response.Write("<script>alert('Your Current password entered is wrong')</script>");
            }
            cnn.Close();

        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            cp.Text = string.Empty;
            np.Text = string.Empty;
            rnp.Text = string.Empty;
        }
    }
}