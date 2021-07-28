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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lgntbn_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True;");
            try
            {
                string uid = userid.Text;
                string pass = password.Text;
                string ut = usertype.SelectedItem.Value.ToString();
                if (ut.Equals("Admin"))
                {
                    con.Open();
                    string qry = "select * from adminlog where username=@uid and password=@pass";

                    SqlCommand cmd = new SqlCommand(qry, con);
                    cmd.Parameters.AddWithValue("@uid", uid);
                    cmd.Parameters.AddWithValue("@pass", pass);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        Session["admin"] = uid;
                        Response.Redirect("Admindash.aspx");
                    }
                    else
                    {
                        Response.Write("<script language='javascript'>alert('UserId & Password Is not correct Try again..!!');</script>");

                    }
                    con.Close();
                }
                else if (ut.Equals("TM"))
                {
                    con.Open();
                    string qry = "select * from empdetails where jobid='J102' and empid=@uid and password=@pass";

                    SqlCommand cmd = new SqlCommand(qry, con);
                    cmd.Parameters.AddWithValue("@uid", uid);
                    cmd.Parameters.AddWithValue("@pass", pass);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        Session["tmid"] = uid;
                        Response.Redirect("TMdash.aspx");
                    }
                    else
                    {
                        Response.Write("<script language='javascript'>alert('UserId & Password Is not correct Try again..!!');</script>");

                    }
                    con.Close();
                }
                else if (ut.Equals("EMP"))
                {
                    con.Open();
                    string qry = "select * from empdetails where  empid=@uid and password=@pass";

                    SqlCommand cmd = new SqlCommand(qry, con);
                    cmd.Parameters.AddWithValue("@uid", uid);
                    cmd.Parameters.AddWithValue("@pass", pass);
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {
                        Session["eid"] = uid;
                        Response.Redirect("EMPdash.aspx");
                    }
                    else
                    {
                        Response.Write("<script language='javascript'>alert('UserId & Password Is not correct Try again..!!');</script>");

                    }
                    con.Close();
                }
                else
                {
                    Response.Write("<script language='javascript'>alert('Please a Select a user type');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

    }
}