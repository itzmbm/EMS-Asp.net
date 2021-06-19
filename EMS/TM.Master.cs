using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS
{
    public partial class TM : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("TMdash.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TMleavereq.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("TMapprovedleave.aspx");
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("TMrejectedleave.aspx");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("TMviewemp.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}