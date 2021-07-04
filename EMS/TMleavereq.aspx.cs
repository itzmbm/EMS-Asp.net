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
                if (statusApprove.Checked)
                {
                    updaterow(leaveid, "Approved");
                }
                else if (statusReject.Checked)
                {
                    updaterow(leaveid, "Rejected");
                }
                else
                {
                    updaterow(leaveid, "Pending");
                }
            }
            Response.Write("<script>alert('Leave Status Updated')</script>");
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
        private void updaterow(string leaveid, string status)
        {

            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand(@"Update [dbo].[empleaves]
            SET [status] = @status WHERE [leaveid] = @leaveid", cnn);
            cmd.Parameters.AddWithValue("@leaveid", leaveid);
            cmd.Parameters.AddWithValue("@status", status);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            cnn.Close();
        }
    }
}