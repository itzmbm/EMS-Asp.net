<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminaddsal.aspx.cs" Inherits="EMS.Adminaddsal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!--add--->
       <div class="addsal" >
         <div class="wrapper-sal shadow-lg p-3 mb-5 bg-white rounded">
                <h2 >Employee Salary Details</h2>
                 <hr />
               <table>
                   <tr>
                       <td>
                       <asp:Label ID="Label1" runat="server" Text="Emp-ID"></asp:Label>:</td><td>
                           <asp:TextBox ID="empid" runat="server" CssClass="tbox" placeholder="Enter employee ID"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate ="empid" CssClass="val" ErrorMessage="Emp-ID required" Display="Dynamic"></asp:RequiredFieldValidator></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label2" runat="server" Text="Emp-Name"></asp:Label>:</td><td>
                           <asp:TextBox ID="empname" runat="server" CssClass="tbox" placeholder="Enter employee name"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate ="empname" CssClass="val" ErrorMessage="Emp-Name required" Display="Dynamic"></asp:RequiredFieldValidator></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label3" runat="server" Text="Basic-Salary"></asp:Label>:</td><td>
                           <asp:TextBox ID="bsal" runat="server" CssClass="tbox" type="number" placeholder="Enter Basic Salary amount"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate ="bsal" CssClass="val" ErrorMessage="Basic salary required" Display="Dynamic"></asp:RequiredFieldValidator>
                           <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="bsal" Display="Dynamic" CssClass="val" ErrorMessage="" Font-Size="Smaller" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                                                                                                   </td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label4" runat="server" Text="Houserent-Allowance"></asp:Label>:</td>
                       <td>
                           <asp:TextBox ID="hra" runat="server" CssClass="tbox" type="number" placeholder="Enter Houserent Allowance amount"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate ="hra" CssClass="val" ErrorMessage="HRA required" Display="Dynamic"></asp:RequiredFieldValidator></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label5" runat="server" Text="Medical-Allowance"></asp:Label>:</td><td>
                           <asp:TextBox ID="ma" runat="server" CssClass="tbox" type="number" placeholder="Enter Medical Allowance amount"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate ="ma" CssClass="val" ErrorMessage="Medical Allowance required" Display="Dynamic"></asp:RequiredFieldValidator></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label6" runat="server" Text="Fuel-Allowance"></asp:Label>:</td><td>
                           <asp:TextBox ID="fa" runat="server" CssClass="tbox" type="number" placeholder="Enter Fuel Allowance amount"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate ="fa" CssClass="val" ErrorMessage="Fuel Allowance required" Display="Dynamic"></asp:RequiredFieldValidator></td>
                       <tr>
                       <td>
                       <asp:Label ID="Label7" runat="server" Text="Phone/Internet-Allowance"></asp:Label>:</td><td>
                           <asp:TextBox ID="pia" runat="server" CssClass="tbox" type="number" placeholder="Enter Phone/Internet Allowance amount"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate ="pia" CssClass="val" ErrorMessage="PIA required" Display="Dynamic"></asp:RequiredFieldValidator></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label8" runat="server" Text="Provident Fund"></asp:Label>:</td><td>
                           <asp:TextBox ID="pf" runat="server" CssClass="tbox" type="number" placeholder="Enter Provident Fund amount"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate ="pf" CssClass="val" ErrorMessage="PF required" Display="Dynamic"></asp:RequiredFieldValidator></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label9" runat="server" Text="Tax Deduction"></asp:Label>:</td><td>
                           <asp:TextBox ID="taxd" runat="server" CssClass="tbox" type="number" placeholder="Enter Tax deduction amount"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate ="taxd" CssClass="val" ErrorMessage="Tax-Deduction required"></asp:RequiredFieldValidator></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label10" runat="server" Text="Other Deduction"></asp:Label>:</td><td>
                           <asp:TextBox ID="od" runat="server" CssClass="tbox" type="number" placeholder="Enter other deduction amount"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate ="od" CssClass="val" ErrorMessage="OD required enter 0 atleast"></asp:RequiredFieldValidator></td>
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
                       <td><br /></td><td><br /><asp:Button ID="Add" runat="server" Text="Add" class="btn btn-success" OnClick="Add_Click" />&nbsp;<asp:Button ID="Update" runat="server" Text="Update" class="btn btn-warning" OnClick="Update_Click"/>
                           <asp:Button ID="Delete" runat="server" Text="Delete" class="btn btn-danger" OnClick="Delete_Click"/>
                          </td>
                   </tr>
               </table>
                 </div>
         

         
        <div class="wrapper1 shadow-lg p-3 mb-5 bg-white rounded" >
              <h2>Search</h2>
                <hr />
                <asp:TextBox ID="search" runat="server" CssClass="tbox" placeholder="Enter employee ID">&nbsp;&nbsp;&nbsp;</asp:TextBox><asp:Button ID="searchbtn" runat="server" Text="Search" CausesValidation="false" CssClass="search btn btn-primary" OnClick="Searchbtn_Click" />
            </div>
             </div>
</asp:Content>
