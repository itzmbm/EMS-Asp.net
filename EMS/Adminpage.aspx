<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminpage.aspx.cs" Inherits="EMS.Adminpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
     <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
   
    <link rel="stylesheet" href="adminpage.css">

</head>
<body>
    <form id="form1" runat="server">
        <!-- nav bar -->
    <div class="nav">
        <ul class="navv">
            <span class="nimg">
                <li class="li"><img src="images/Employee.png" style="width: 350px;height: 70px;margin-top: 05px;margin-left: 10px;"><span style="color: white;text-align: center;"></span></li>
            </span>
            <div class="menu">
                <li class="li"><a class="dash"  href="" >Dashboard</a></li>
                <li class="li"><a  class="aemp" href="">Add Employees</a></li>
                 <li class="li"><a class="adept" href="">Add Department</a></li>
                <li class="li"><a class="ajob" href="">Add Job</a></li>
                <li class="li"><a  href="">Log out</a></li>
            </div>
        </ul>
    </div>
        <!--add--->
       <div class="addemp ">
         <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
                <h2 >Employee Details</h2>
                 <hr />
               <table>
                   <tr>
                       <td>
                       <asp:Label ID="Label1" runat="server" Text="Emp-ID"></asp:Label>:</td><td>
                           <asp:TextBox ID="empid" runat="server" CssClass="tbox" placeholder="Enter employee ID"></asp:TextBox></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label2" runat="server" Text="Emp-Name"></asp:Label>:</td><td>
                           <asp:TextBox ID="empname" runat="server" CssClass="tbox" placeholder="Enter employee name"></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>:</td><td>
                           <asp:TextBox ID="email" runat="server" CssClass="tbox" placeholder="Enter email id"></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label4" runat="server" Text="Phone No"></asp:Label>:</td><td>
                           <asp:TextBox ID="phone" runat="server" CssClass="tbox" placeholder="Enter phone no"></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label5" runat="server" Text="Hire-Date"></asp:Label>:</td><td>
                           <asp:TextBox ID="hiredate" runat="server" placeholder="From" type="date" CssClass="tbox"></asp:TextBox>
                          </td>
                   </tr>

                    <tr>
                       <td>
                       <asp:Label ID="Label6" runat="server" Text="Manager-ID"></asp:Label>:</td><td>
                           <asp:TextBox ID="mid" runat="server" CssClass="tbox" placeholder="Enter manager ID"></asp:TextBox>
                          </td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label7" runat="server" Text="Department-ID"></asp:Label>:</td><td>
                           <asp:TextBox ID="did" runat="server" CssClass="tbox" placeholder="Enter department ID" ></asp:TextBox>
                          </td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label8" runat="server" Text="Job-ID"></asp:Label>:</td><td>
                           <asp:TextBox ID="jid" runat="server" CssClass="tbox" placeholder="Enter Job ID" ></asp:TextBox>
                          </td>
                   </tr>
                     <tr>
                       <td>
                       <asp:Label ID="Label9" runat="server" Text="Salary"></asp:Label>:</td><td>
                           <asp:TextBox ID="salary" runat="server" CssClass="tbox" placeholder="Enter salary per annum" ></asp:TextBox>
                          </td>
                   </tr>
                   <tr>
                        
                       <td><br /></td><td><br /><asp:Button ID="Button1" runat="server" Text="Add" class="btn btn-success" />&nbsp;<asp:Button ID="Button2" runat="server" Text="Update" class="btn btn-warning" />
                           <asp:Button ID="Button3" runat="server" Text="Delete" class="btn btn-danger" />
                          </td>
                   </tr>
               </table>
                 </div>
         

         
        <div class="wrapper1 shadow-lg p-3 mb-5 bg-white rounded" >
              <h2>Search</h2>
                <hr />
                <asp:TextBox ID="search" runat="server" CssClass="tbox" placeholder="Enter employee ID">&nbsp;&nbsp;&nbsp;</asp:TextBox><asp:Button ID="Button4" runat="server" Text="Search"  CssClass="search btn btn-primary" />
            </div>
             </div>

           <!--add department-->
        <div class="adddept ">
               <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
                <h2 >Department Details</h2>
                 <hr />
               <table>
                   <tr>
                       <td>
                       <asp:Label ID="Label10" runat="server" Text="Department-ID"></asp:Label>:</td><td>
                           <asp:TextBox ID="did1" runat="server" CssClass="tbox" placeholder="Enter department ID"></asp:TextBox></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label11" runat="server" Text="Department-Name"></asp:Label>:</td><td>
                           <asp:TextBox ID="dname" runat="server" CssClass="tbox" placeholder="Enter department name"></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label12" runat="server" Text="Manager-ID"></asp:Label>:</td><td>
                           <asp:TextBox ID="mid1" runat="server" CssClass="tbox" placeholder="Enter manager id"></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label13" runat="server" Text="Location"></asp:Label>:</td><td>
                           <asp:TextBox ID="location" runat="server" CssClass="tbox" placeholder="Enter location"></asp:TextBox></td>
                   </tr>
              
                   <tr>
                        
                       <td><br /></td><td><br /><asp:Button ID="Button5" runat="server" Text="Add" class="btn btn-success" />&nbsp;<asp:Button ID="Button6" runat="server" Text="Update" class="btn btn-warning" />
                           <asp:Button ID="Button7" runat="server" Text="Delete" class="btn btn-danger" />
                          </td>
                   </tr>
               </table>
                 </div>

        <div class="wrapper1  shadow-lg p-3 mb-5 bg-white rounded" >
              <h2>Search</h2>
                <hr />
                <asp:TextBox ID="TextBox8" runat="server" CssClass="tbox" placeholder="Enter department ID">&nbsp;&nbsp;&nbsp;</asp:TextBox><asp:Button ID="search1" runat="server" Text="Search"  CssClass="search btn btn-primary" />
            </div>
       
             </div>
        <!--add job-->
         <div class="addjob ">
               <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
                <h2 >Job Details</h2>
                 <hr />
               <table>
                   <tr>
                       <td>
                       <asp:Label ID="Label14" runat="server" Text="Job-ID"></asp:Label>:</td><td>
                           <asp:TextBox ID="jid1" runat="server" CssClass="tbox" placeholder="Enter Job ID"></asp:TextBox></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label15" runat="server" Text="Job-Title"></asp:Label>:</td><td>
                           <asp:TextBox ID="jname" runat="server" CssClass="tbox" placeholder="Enter Job title"></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label16" runat="server" Text="Minimum-Salary"></asp:Label>:</td><td>
                           <asp:TextBox ID="minsal" runat="server" CssClass="tbox" placeholder="Enter minimum salary" type="number"></asp:TextBox></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label17" runat="server" Text="Maximum-Salary"></asp:Label>:</td><td>
                           <asp:TextBox ID="maxsal" runat="server" CssClass="tbox" placeholder="Enter maximum salary" type="number"></asp:TextBox></td>
                   </tr>
                   
              
                   <tr>
                        
                       <td><br /></td><td><br /><asp:Button ID="Button9" runat="server" Text="Add" class="btn btn-success" />&nbsp;<asp:Button ID="search2" runat="server" Text="Update" class="btn btn-warning" />
                           <asp:Button ID="Button11" runat="server" Text="Delete" class="btn btn-danger" />
                          </td>
                   </tr>
               </table>
                 </div>
           

         
        <div class="wrapper1  shadow-lg p-3 mb-5 bg-white rounded" >
              <h2>Search</h2>
                <hr />
                <asp:TextBox ID="TextBox5" runat="server" CssClass="tbox" placeholder="Enter Job ID">&nbsp;&nbsp;&nbsp;</asp:TextBox><asp:Button ID="search3" runat="server" Text="Search"  CssClass="search btn btn-primary" />
            </div>
       
             </div>
           
    </form>

    <script type="text/javascript">
        //get element
        const dash = document.querySelector('.dash');
        const aemp = document.querySelector('.aemp');
        const adept = document.querySelector('.adept');
        const ajob = document.querySelector('.ajob');
        const addemp = document.querySelector('.addemp');
        const adddept = document.querySelector('.adddept');
        const addjob = document.querySelector('.addjob');
        addemp.classList.add("hide");
        adddept.classList.add("hide");
        addjob.classList.add("hide");
        //event listener
        dash.addEventListener("click", dashf);
        aemp.addEventListener("click", aempf);
        adept.addEventListener("click", adeptf);
        ajob.addEventListener("click", ajobf);
        //functions
        function dashf(e) {

        }
        function aempf(e1) {
            e1.preventDefault();
            if (addemp.classList.contains("hide")) {
                addemp.classList.remove("hide");
                adddept.classList.remove("show");
                addjob.classList.remove("show");
                addemp.classList.add("show");
                adddept.classList.add("hide");
                addjob.classList.add("hide");
                
            }
            else {
                addemp.classList.remove("show");
                adddept.classList.remove("show");
                addjob.classList.remove("show");
                addemp.classList.add("hide");
                adddept.classList.add("hide");
                addjob.classList.add("hide");
            
            } 
        }
        function adeptf(e2) {
            e2.preventDefault();
            if (adddept.classList.contains("hide")) {
                addemp.classList.remove("show");
                adddept.classList.remove("hide");
                addjob.classList.remove("show");
                addemp.classList.add("hide");
                adddept.classList.add("show");
                addjob.classList.add("hide");
                
            
            }
            else {
                addemp.classList.remove("show");
                adddept.classList.remove("show");
                addjob.classList.remove("show");
                addemp.classList.add("hide");
                adddept.classList.add("hide");
                addjob.classList.add("hide");
            }
        }
        function ajobf(e3) {
            e3.preventDefault();
            if (addjob.classList.contains("hide")) {
                addemp.classList.remove("show");
                adddept.classList.remove("show");
                addjob.classList.remove("hide");
                addemp.classList.add("hide");
                adddept.classList.add("hide");
                addjob.classList.add("show");
            }
            else {
                addemp.classList.remove("show");
                adddept.classList.remove("show");
                addjob.classList.remove("show");
                addemp.classList.add("hide");
                adddept.classList.add("hide");
                addjob.classList.add("hide");
            }
        }
       
    </script>
</body>
</html>
