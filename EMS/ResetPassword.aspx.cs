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
    public partial class ResetPassword : System.Web.UI.Page
    {
        string GUIDvalue;

        string Uid;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True;"))
            {

                GUIDvalue = Request.QueryString["id"];

                if (GUIDvalue != null)
                {
                    SqlCommand cmd = new SqlCommand("Select * from ForgotPass where Id=@Id", con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@Id", GUIDvalue);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);

                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        Uid = Convert.ToString(dt.Rows[0][1]);
                    }
                    else
                    {
                        lblmsg.Text = "Your Password Reset Link is Expired or Invalid...try again";
                        lblmsg.ForeColor = System.Drawing.Color.Red;
                    }

                }
                else
                {
                    Response.Redirect("~/Default.aspx");
                }

            }

            if (!IsPostBack)
            {
                if (dt.Rows.Count != 0)
                {
                    np.Visible = true;
                    rnp.Visible = true;
                    newpass.Visible = true;
                   renewpass.Visible = true;
                    reset.Visible = true;
                }
                else
                {
                    lblmsg.Text = "Your Password Reset Link is Expired or Invalid...try again";
                    lblmsg.ForeColor = System.Drawing.Color.Red;

                }

            }


        }
      
        protected void Submit_Click(object sender, EventArgs e)
        {
            if (np.Text != "" && rnp.Text != "" && np.Text == rnp.Text)
            {
                using (SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True;"))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Update empdetails set password=@p where empid=@Uid", con);
                    cmd.Parameters.AddWithValue("@p", np.Text);
                    cmd.Parameters.AddWithValue("@Uid", Uid);
                    try
                    {
                        cmd.ExecuteNonQuery();
                    }
                    catch
                    {
                        Response.Write("<script> alert('UID reuqired');  </script>");
                    }

                    SqlCommand cmd2 = new SqlCommand("delete from ForgotPass where empid='" + Uid + "'", con);
                    cmd2.ExecuteNonQuery();
                    Response.Write("<script> alert('Password Reset Successfully done');  </script>");
                    Response.Redirect("~/Login.aspx");
                }
            }
        }
        protected void Clear_Click(object sender, EventArgs e)
        {

            np.Text = string.Empty;
            rnp.Text = string.Empty;
        }

    }
}