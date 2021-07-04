using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS
{
    public partial class TMdash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           string tmid1 = (string)Session["tmid"];
            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            cnn.Open();
            SqlCommand al = new SqlCommand("SELECT COUNT(*) FROM [empleaves] where ([mngid] ='" + tmid1 + "') and ([status]='Approved') ", cnn);
            SqlCommand rl = new SqlCommand("SELECT COUNT(*) FROM [empleaves] WHERE ([mngid] ='" + tmid1 + "') and ([status]='Rejected')", cnn);
            SqlCommand p = new SqlCommand("SELECT COUNT(*) FROM [empleaves] WHERE ([mngid] ='" + tmid1 + "') and ([status]='Pending')", cnn);
            SqlCommand emp = new SqlCommand("SELECT COUNT(*) FROM [empdetails] WHERE ([mngid] ='" + tmid1 + "') ", cnn);
            
            int total = (int)al.ExecuteScalar();
            int totrl = (int)rl.ExecuteScalar();
            int totemp = (int)emp.ExecuteScalar();
            int totp = (int)p.ExecuteScalar();
            
                totalAL.Text = total.ToString();
                totalRL.Text = totrl.ToString();
                totalEMP.Text = totemp.ToString();
            totalVP.Text= totp.ToString();

        }
        protected void ViewAL_Click(object sender, EventArgs e)
        {
            Response.Redirect("TMapprovedleave.aspx");
        }

        protected void ViewRL_Click(object sender, EventArgs e)
        {
            Response.Redirect("TMrejectedleave.aspx");
        }

        protected void Viewemp_Click(object sender, EventArgs e)
        {
            Response.Redirect("TMviewemp.aspx");
        }

        protected void Viewpending_Click(object sender, EventArgs e)
        {
            Response.Redirect("TMleavereq.aspx");
        }
    }
}