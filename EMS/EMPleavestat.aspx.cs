using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS
{
    public partial class EMPleavestat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }
        protected void CancelClick(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox sel = (row.Cells[3].FindControl("CheckBox1") as CheckBox);
               
                string leaveid = (row.Cells[1].Text);
                string eid= (row.Cells[2].Text);
                string ltype= (row.Cells[8].Text);
                int nodays = int.Parse(row.Cells[7].Text);
                if (sel.Checked)
                {
                    deleterow(leaveid,eid,ltype,nodays);
                }
                else
                {
                    
                }
            }
           
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
        private void deleterow(string leaveid,string empid,string ltype,int nodays)
        {

            string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
            SqlConnection cnn = new SqlConnection(ConnectionString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand(@"DELETE FROM[dbo].[empleaves] WHERE[leaveid] = @leaveid", cnn);
            cmd.Parameters.AddWithValue("@leaveid", leaveid);

            SqlCommand cmd1 = new SqlCommand(@"Update [dbo].[empleaves]
            SET [nod] = @nod WHERE [empid] = @empid and [leavetype]=@leavetype", cnn);
            cmd1.Parameters.AddWithValue("@empid", empid);
            cmd1.Parameters.AddWithValue("@nod", nodays);
            cmd1.Parameters.AddWithValue("@leavetype", ltype);
            cmd1.ExecuteNonQuery();
            cmd1.Dispose();
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Response.Write("<script>alert('Leave Cancelled')</script>");
            cnn.Close();
        }
    }
}