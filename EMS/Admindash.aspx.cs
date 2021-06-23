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
    public partial class Admindash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            cnn.Open();
            SqlCommand emp = new SqlCommand("SELECT COUNT(*) FROM [empdetails] ", cnn);
            SqlCommand mng = new SqlCommand("SELECT COUNT(*) FROM [empdetails] WHERE ([jobid] = 'J101')", cnn);
            SqlCommand dept = new SqlCommand("SELECT COUNT(*) FROM [deptdetails] ", cnn);
            SqlCommand job = new SqlCommand("SELECT COUNT(*) FROM [jobdetails] ", cnn);
            int totemp = (int)emp.ExecuteScalar();
            int totmng = (int)mng.ExecuteScalar();
            int totdept = (int)dept.ExecuteScalar();
            int totjob = (int)job.ExecuteScalar();
            totalemp.Text = totemp.ToString();
            totaltm.Text = totmng.ToString();
            totaldept.Text = totdept.ToString();
            totaljob.Text = totjob.ToString();
            }
    }
}