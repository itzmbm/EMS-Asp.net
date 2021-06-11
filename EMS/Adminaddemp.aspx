<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminaddemp.aspx.cs" Inherits="EMS.Adminaddemp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
      <!--add--->
       <div class="addemp" >
         <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
                <h2 >Employee Details</h2>
                 <hr />
               <table>
                   <tr>
                       <td>
                       <asp:Label ID="Label1" runat="server" Text="Emp-ID"></asp:Label>:</td><td>
                           <asp:TextBox ID="empid" runat="server" CssClass="tbox" placeholder="Enter employee ID"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate ="empid" ErrorMessage="Emp-ID required"></asp:RequiredFieldValidator></td>
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
</asp:Content>

