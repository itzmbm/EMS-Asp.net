using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS
{
    public partial class EMPdash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string empid1 = (string)Session["eid"];
            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            cnn.Open();
            SqlCommand al = new SqlCommand("SELECT COUNT(*) FROM [empleaves] where ([empid] ='" + empid1 + "') and ([status]='Approved') ", cnn);
            SqlCommand rl = new SqlCommand("SELECT COUNT(*) FROM [empleaves] WHERE ([empid] ='" + empid1 + "') and ([status]='Rejected')", cnn);
            int total = (int)al.ExecuteScalar();
            int totrl = (int)rl.ExecuteScalar();
            totalAL.Text = total.ToString();
            totalRL.Text = totrl.ToString();
      
        }

        protected void ViewAL_Click(object sender, EventArgs e)
        {
            Response.Redirect("EMPviewal.aspx");
        }

        protected void ViewRL_Click(object sender, EventArgs e)
        {
            Response.Redirect("EMPviewrl.aspx");
        }

        protected void Viewsal_Click(object sender, EventArgs e)
        {
            Response.Redirect("EMPviewsal.aspx");
        }

        protected void Viewpro_Click(object sender, EventArgs e)
        {
            Response.Redirect("EMPviewpro.aspx");
        }
    }
}