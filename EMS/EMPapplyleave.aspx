<%@ Page Title="" Language="C#" MasterPageFile="~/EMP.Master" AutoEventWireup="true" CodeBehind="EMPapplyleave.aspx.cs" Inherits="EMS.EMPapplyleave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="adddept" >
               <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
                <h2 >Apply Leave</h2>
                 <hr />
               <table>
                   <tr>
                       <td>
                       <asp:Label ID="Label1" runat="server" Text="Emp-ID"></asp:Label>:</td><td>
                           <asp:TextBox ID="eid" runat="server" CssClass="tbox" placeholder="Enter employee ID" disabled></asp:TextBox></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label2" runat="server" Text="Employee-Name"></asp:Label>:</td><td>
                           <asp:TextBox ID="ename" runat="server" CssClass="tbox" placeholder="Enter employee name" disabled></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label3" runat="server" Text="From"></asp:Label>:</td><td>
                           <asp:TextBox ID="from" runat="server" CssClass="tbox" placeholder="Enter from date" type="date"></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label4" runat="server" Text="Till"></asp:Label>:</td><td>
                           <asp:TextBox ID="till" runat="server" CssClass="tbox" placeholder="Enter till date" type="date"></asp:TextBox></td>
                   </tr>
              
                   
                   <tr>
                       <td>
                       <asp:Label ID="Label5" runat="server" Text="Number of days"></asp:Label>:</td><td>
                           <asp:TextBox ID="days" runat="server" CssClass="tbox" placeholder="Enter number of days" ></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label6" runat="server" Text="Leave Type"></asp:Label>:</td>
                        <td><asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="">Select Leave type</asp:ListItem> 
                        <asp:ListItem>Casual Leave</asp:ListItem>
                        <asp:ListItem>Earned Leave</asp:ListItem>
                        <asp:ListItem>Sick Leave</asp:ListItem>
                        <asp:ListItem>Maternity Leave</asp:ListItem>
                         <asp:ListItem>Paternity Leave</asp:ListItem>
                    </asp:DropDownList>
                           </td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label7" runat="server" Text="Reason"></asp:Label>:</td><td>
                           <asp:TextBox ID="reason" runat="server" CssClass="tbox" placeholder="Type your reason for leave" ></asp:TextBox></td>
                   </tr>
                   <tr>
                        
                       <td><br /></td><td><br /><asp:Button ID="Button5" runat="server" Text="Apply" class="btn btn-success" />
                          </td>
                   </tr>
               </table>
                 </div>
        <div class="wrapper1 shadow-lg p-3 mb-5 bg-white rounded">
            <h2 >Leaves Left</h2>
                 <hr />
            <table class="stat">
  <tr>
    <th>Leave Type</th>
    <th>Left</th>
   
  </tr>
  <tr>
    <td>Casual Leave</td>
    <td>12</td>
    
  </tr>
  <tr>
    <td>Earned Leave</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Sick Leave</td>
    <td>12</td>
  </tr>
  <tr>
   <td>Maternity Leave</td>
    <td>135</td>
  </tr>
    <tr>
   <td>Paternity Leave</td>
    <td>15</td>
  </tr>
 
</table>
        </div>
</asp:Content>
