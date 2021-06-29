using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS
{
    public partial class EMPviewsal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["eid"] != null)
            {

            }
            else
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                DataTable dt = (SqlDataSource1.Select(DataSourceSelectArguments.Empty) as DataView).ToTable();
                BindGrid(dt, true);
              
                    DataTable dt2 = new DataTable();
                    for (int i = 0; i <= dt.Rows.Count; i++)
                    {
                        dt2.Columns.Add("", typeof(string));
                    }
                    for (int i = 0; i < dt.Columns.Count; i++)
                    {
                        dt2.Rows.Add();
                        dt2.Rows[i][0] = dt.Columns[i].ColumnName;
                    }
                    for (int i = 0; i < dt.Columns.Count; i++)
                    {
                        for (int j = 0; j < dt.Rows.Count; j++)
                        {
                            dt2.Rows[i][j + 1] = dt.Rows[j][i];
                        }
                    }
                    BindGrid(dt2, false);         
                
            }

        }
        private void BindGrid(DataTable dt, bool rotate)
        {
            this.GridView1.DataSourceID = "";
            GridView1.ShowHeader = !rotate;
            this.GridView1.DataSource = dt;
            GridView1.DataBind();
            if (rotate)
            {
                foreach (GridViewRow row in GridView1.Rows)
                {
                    row.Cells[0].CssClass = "header";
                }
            }
        }

        protected void Print(object sender, EventArgs e)
        {

        }
    }
}

