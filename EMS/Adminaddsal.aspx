<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminaddsal.aspx.cs" Inherits="EMS.Adminaddsal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!--add--->
       <div class="addsal" >
         <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
                <h2 >Employee Salary Details</h2>
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
                       <asp:Label ID="Label3" runat="server" Text="Basic-Salary"></asp:Label>:</td><td>
                           <asp:TextBox ID="bsal" runat="server" CssClass="tbox" type="number" placeholder="Enter Basic Salary amount"></asp:TextBox></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label4" runat="server" Text="Houserent-Allowance"></asp:Label>:</td>
                       <td>
                           <asp:TextBox ID="hra" runat="server" CssClass="tbox" type="number" placeholder="Enter Houserent Allowance amount"></asp:TextBox></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label5" runat="server" Text="Medical-Allowance"></asp:Label>:</td><td>
                           <asp:TextBox ID="ma" runat="server" CssClass="tbox" type="number" placeholder="Enter Medical Allowance amount"></asp:TextBox></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label6" runat="server" Text="Fuel-Allowance"></asp:Label>:</td><td>
                           <asp:TextBox ID="fa" runat="server" CssClass="tbox" type="number" placeholder="Enter Fuel Allowance amount"></asp:TextBox></td>
                       <tr>
                       <td>
                       <asp:Label ID="Label7" runat="server" Text="Phone/Internet-Allowance"></asp:Label>:</td><td>
                           <asp:TextBox ID="pia" runat="server" CssClass="tbox" type="number" placeholder="Enter Phone/Internet Allowance amount"></asp:TextBox></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label8" runat="server" Text="Provident Fund"></asp:Label>:</td><td>
                           <asp:TextBox ID="pf" runat="server" CssClass="tbox" type="number" placeholder="Enter Provident Fund amount"></asp:TextBox></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label9" runat="server" Text="Tax Deduction"></asp:Label>:</td><td>
                           <asp:TextBox ID="taxd" runat="server" CssClass="tbox" type="number" placeholder="Enter Tax deduction amount"></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label10" runat="server" Text="Other Deduction"></asp:Label>:</td><td>
                           <asp:TextBox ID="od" runat="server" CssClass="tbox" type="number" placeholder="Enter other deduction amount"></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label11" runat="server" Text="Gross Salary"></asp:Label>:</td><td>
                           <asp:TextBox ID="gs" runat="server" CssClass="tbox" type="number" placeholder="Gross Salary amount" disabled></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label12" runat="server" Text="Total Deduction"></asp:Label>:</td><td>
                           <asp:TextBox ID="totded" runat="server" CssClass="tbox" type="number" placeholder="Total deduction amount" disabled></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label13" runat="server" Text="Net Salary"></asp:Label>:</td><td>
                           <asp:TextBox ID="netsal" runat="server" CssClass="tbox" type="number" placeholder="Net Salary amount" disabled></asp:TextBox></td>
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
