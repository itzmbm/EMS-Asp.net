using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace EMS
{
    public partial class Adminaddsal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       
        protected void Add_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string eid = empid.Text;
                string ename = empname.Text;
                int ebsal = int.Parse(bsal.Text);
                int ehra = int.Parse(hra.Text);
                int ema = int.Parse(ma.Text);
                int efa = int.Parse(fa.Text);
                int epia = int.Parse(pia.Text);
                int epf = int.Parse(pf.Text);
                int etaxd = int.Parse(taxd.Text);
                int eod = int.Parse(od.Text);
                int egs = ebsal + ehra + ema + efa + epia;
                int etotded = epf + etaxd + eod;
                int ens = egs - etotded;

                string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
                SqlConnection cnn = new SqlConnection(ConnectionString);
                cnn.Open();
                SqlCommand check_User_Name = new SqlCommand("SELECT COUNT(*) FROM [empsalary] WHERE ([empid] = @empid)", cnn);
                check_User_Name.Parameters.AddWithValue("@empid", eid);
                int UserExist = (int)check_User_Name.ExecuteScalar();

                if (UserExist > 0)
                {
                    //Username exists
                    Response.Write("<script>alert('Emp-ID already exists click on update')</script>");

                }
                else
                {
                    //Username doesn't exist.

                    SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[empsalary]
([empid],[empname],[bsalary],[hra],[ma],[fa],[pia],[pf],[tax],[od],[gross],[totalded],[net])
VALUES
(@empid,@empname,@bsalary,@hra,@ma,@fa,@pia,@pf,@tax,@od,@gross,@totalded,@net)", cnn);
                    cmd.Parameters.AddWithValue("@empid", eid);
                    cmd.Parameters.AddWithValue("@empname", ename);
                    cmd.Parameters.AddWithValue("@bsalary", ebsal);
                    cmd.Parameters.AddWithValue("@hra", ehra);
                    cmd.Parameters.AddWithValue("@ma", ema);
                    cmd.Parameters.AddWithValue("@fa", efa);
                    cmd.Parameters.AddWithValue("@pia", epia);
                    cmd.Parameters.AddWithValue("@pf", epf);
                    cmd.Parameters.AddWithValue("@tax", etaxd);
                    cmd.Parameters.AddWithValue("@od", eod);
                    cmd.Parameters.AddWithValue("@gross", egs);
                    cmd.Parameters.AddWithValue("@totalded", etotded);
                    cmd.Parameters.AddWithValue("@net", ens);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Data inserted')</script>");
                    cmd.Dispose();
                }

                cnn.Close();
            }
            
        }
    
        protected void Update_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                String eid = empid.Text;
                String ename = empname.Text;
                int ebsal = int.Parse(bsal.Text);
                int ehra = int.Parse(hra.Text);
                int ema = int.Parse(ma.Text);
                int efa = int.Parse(fa.Text);
                int epia = int.Parse(pia.Text);
                int epf = int.Parse(pf.Text);
                int etaxd = int.Parse(taxd.Text);
                int eod = int.Parse(od.Text);
                int egs = ebsal + ehra + ema + efa + epia;
                int etotded = epf + etaxd + eod;
                int ens = egs - etotded;

                string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
                SqlConnection cnn = new SqlConnection(ConnectionString);
                cnn.Open();
                SqlCommand check_User_ID = new SqlCommand("SELECT * FROM empsalary WHERE ([empid] = @eid)", cnn);
                check_User_ID.Parameters.AddWithValue("@eid", eid);
                SqlDataReader reader = check_User_ID.ExecuteReader();
                check_User_ID.Dispose();
                if (reader.HasRows)
                {
                    //User Exists
                    reader.Close();
                    SqlCommand cmd = new SqlCommand(@"Update [dbo].[empsalary]
            SET [empid]=@empid,[empname]=@empname,[bsalary]=@bsalary,[hra]=@hra,[ma]=@ma,[fa]=@fa,[pia]=@pia,[pf]=@pf,[tax]=@tax,[od]=@od,[gross]=@gross,[totalded]=@totalded,[net]=@net WHERE [empid] =@empid", cnn);
                    cmd.Parameters.AddWithValue("@empid", eid);
                    cmd.Parameters.AddWithValue("@empname", ename);
                    cmd.Parameters.AddWithValue("@bsalary", ebsal);
                    cmd.Parameters.AddWithValue("@hra", ehra);
                    cmd.Parameters.AddWithValue("@ma", ema);
                    cmd.Parameters.AddWithValue("@fa", efa);
                    cmd.Parameters.AddWithValue("@pia", epia);
                    cmd.Parameters.AddWithValue("@pf", epf);
                    cmd.Parameters.AddWithValue("@tax", etaxd);
                    cmd.Parameters.AddWithValue("@od", eod);
                    cmd.Parameters.AddWithValue("@gross", egs);
                    cmd.Parameters.AddWithValue("@totalded", etotded);
                    cmd.Parameters.AddWithValue("@net", ens);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Data Updated')</script>");
                    cmd.Dispose();
                }
                else
                {
                    //User NOT Exists
                    Response.Write("<script>alert('Emp-ID does not exist')</script>");
                }
                cnn.Close();
            }
            
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string eid = empid.Text;
                string ConnectionString = @"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = emp; Integrated Security = True";
                SqlConnection cnn = new SqlConnection(ConnectionString);

                cnn.Open();
                SqlCommand check_User_ID = new SqlCommand("SELECT * FROM empsalary WHERE ([empid] = @eid)", cnn);
                check_User_ID.Parameters.AddWithValue("@eid", eid);
                SqlDataReader reader = check_User_ID.ExecuteReader();
                check_User_ID.Dispose();
                if (reader.HasRows)
                {
                    //User Exists
                    reader.Close();
                    SqlCommand cmd = new SqlCommand(@"DELETE FROM [dbo].[empsalary] WHERE [empid]=@empid", cnn);
                    cmd.Parameters.AddWithValue("@empid", eid);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Data Deleted Successfully')</script>");
                    cmd.Dispose();

                }
                else
                {
                    //User NOT Exists
                    Response.Write("<script>alert('Emp-ID does not exist')</script>");
                }

                cnn.Close();
            }
            
        }

        protected void Searchbtn_Click(object sender, EventArgs e)
        {
            EmployeeDataContext emp = new EmployeeDataContext();
            empsalary employee = (from s in emp.empsalaries where s.empid.ToString() == search.Text select s).FirstOrDefault();
            if (employee == null)
            {
                Response.Write("<script>alert('Emp-ID does not exist')</script>");
                empid.Text = "";
                empname.Text = "";
                bsal.Text = "";
                hra.Text = "";
                ma.Text = "";
                fa.Text = "";
                pia.Text = "";
                pf.Text = "";
                taxd.Text = "";
                od.Text = "";
                gs.Text = "";
                totded.Text = "";
                netsal.Text = "";

            }
            else
            {
                Response.Write("<script>alert('Emp-ID exists')</script>");
                empid.Text = employee.empid;
                empname.Text = employee.empname;
                bsal.Text = employee.bsalary.ToString();
                hra.Text = employee.hra.ToString();
                ma.Text = employee.ma.ToString();
                fa.Text = employee.fa.ToString();
                pia.Text = employee.pia.ToString();
                pf.Text =employee.pf.ToString();
                taxd.Text = employee.tax.ToString();
                od.Text = employee.od.ToString();
                gs.Text = employee.gross.ToString();
                totded.Text = employee.totalded.ToString();
                netsal.Text = employee.net.ToString();


            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string emid = empid.Text;
            EmployeeDataContext emp = new EmployeeDataContext();
            empdetails employee = (from s in emp.empdetails where s.empid.ToString() == emid select s).FirstOrDefault();
            if (employee != null)
            {
                string jid = employee.jobid;

                jobdetails job = (from s in emp.jobdetails where s.jobid.ToString() == jid select s).FirstOrDefault();
                if (job != null)
                {
                    int mnsal = (job.minsal)/12;
                    int mxsal = (job.maxsal)/12;
                    int sal = int.Parse(args.Value);
                   if(sal>=mnsal && sal <= mxsal)
                    {
                        args.IsValid = true;
                    }
                    else
                    {
                        args.IsValid = false;
                        CustomValidator1.ErrorMessage = "Should be between "+mnsal+" and "+mxsal+".";
                    }
                }
                else
                {
                  
                }
            }
        }
    }


}
