using System;
using System.Collections.Generic;
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