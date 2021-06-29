using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
     

       

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admindash.aspx");
        }
        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Adminaddemp.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminadddept.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminaddjob.aspx");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminaddsal.aspx");
        }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}