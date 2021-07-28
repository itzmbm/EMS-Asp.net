using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;
namespace EMS
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True;"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from empdetails where email=@Email", con);
                cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    string myGUID = Guid.NewGuid().ToString();
                    string empid = Convert.ToString(dt.Rows[0][0]);

                    SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(Id,empid,RequestDateTime) values('" + myGUID + "','" + empid + "',GETDATE())", con);
                    cmd1.ExecuteNonQuery();


                    //Send Reset link via Email

                    string ToEmailAddress = dt.Rows[0][2].ToString();
                    string Username = dt.Rows[0][1].ToString();
                    string EmailBody = "Hi ," + Username + ",<br/><br/>Click the link below to reset your password<br/> <br/> https://localhost:44387/ResetPassword.aspx?id=" + myGUID;


                    MailMessage PassRecMail = new MailMessage("your@gmail.com", ToEmailAddress);

                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Reset Password";

                    using (SmtpClient client = new SmtpClient())
                    {
                        client.EnableSsl = true;
                        /*client.UseDefaultCredentials = true;*/
                        client.Credentials = new NetworkCredential("your@gmail.com", "yourpassword");
                        client.Host = "smtp.gmail.com";
                        client.Port = 587;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;


                        client.Send(PassRecMail);
                    }

                    //--------------


                    lblResetPassMsg.Text = "Reset Link sent ! Check Your email for reset password";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                    txtEmailID.Text = string.Empty;
                }
                else
                {
                    lblResetPassMsg.Text = "Oops! This Email Does not Exist...Try again ";
                    lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                    txtEmailID.Text = string.Empty;
                    txtEmailID.Focus();

                }

            }
        }
}
    }