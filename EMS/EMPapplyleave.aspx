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
                           <asp:TextBox ID="empid" runat="server" CssClass="tbox" placeholder="Enter employee ID" disabled></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="empid" CssClass="val" Display="Dynamic" ErrorMessage="Emp-ID required"></asp:RequiredFieldValidator></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label2" runat="server" Text="Employee-Name"></asp:Label>:</td><td>
                           <asp:TextBox ID="empname" runat="server" CssClass="tbox" placeholder="Enter employee name" disabled></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="empname" CssClass="val" Display="Dynamic"  ErrorMessage="Emp-name required"></asp:RequiredFieldValidator></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label8" runat="server" Text="Mng-ID"></asp:Label>:</td><td>
                           <asp:TextBox ID="mngid" runat="server" CssClass="tbox" placeholder="Enter employee ID" disabled></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="mngid" CssClass="val" Display="Dynamic" ErrorMessage="Mng-ID required"></asp:RequiredFieldValidator></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label3" runat="server" Text="From"></asp:Label>:</td><td>
                           <asp:TextBox ID="From" runat="server" CssClass="tbox" placeholder="Enter from date" type="date"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="from" CssClass="val" Display="Dynamic" ErrorMessage="From-date required"></asp:RequiredFieldValidator></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label4" runat="server" Text="Till"></asp:Label>:</td><td>
                           <asp:TextBox ID="Till" runat="server" CssClass="tbox" placeholder="Enter till date" type="date" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="till" CssClass="val" Display="Dynamic" ErrorMessage="Till-date required"></asp:RequiredFieldValidator>
                           <asp:CompareValidator id="CompareValidator1" runat="server" 
     ControlToCompare="From" cultureinvariantvalues="true" cssClass="val"
     Display="Dynamic" enableclientscript="true"  
     ControlToValidate="Till" 
     ErrorMessage="From date must be earlier than Till date"
     type="Date" setfocusonerror="true" Operator="GreaterThanEqual" 
     ></asp:CompareValidator>
                                                                                           </td>
                   </tr>
              
                   
                   
                    <tr>
                       <td>
                       <asp:Label ID="Label6" runat="server"  Text="Leave Type"></asp:Label>:</td>
                        <td><asp:DropDownList ID="lt" runat="server" cssClass="tbox" style="width:180px; height: 21px;">
                        <asp:ListItem Value="">Select Leave type</asp:ListItem> 
                        <asp:ListItem Value="Casual">Casual Leave</asp:ListItem>
                        <asp:ListItem Value="Earned">Earned Leave</asp:ListItem>
                        <asp:ListItem Value="Sick">Sick Leave</asp:ListItem>
                        <asp:ListItem Value="Maternity">Maternity Leave</asp:ListItem>
                         <asp:ListItem Value="Paternity">Paternity Leave</asp:ListItem>
                    </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="lt" CssClass="val" Display="Dynamic" ErrorMessage="Leave type required"></asp:RequiredFieldValidator>
                           </td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label7" runat="server" Text="Reason"></asp:Label>:</td><td>
                           <asp:TextBox ID="reason" runat="server" CssClass="tbox" placeholder="Type your reason for leave" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="reason" CssClass="val" Display="Dynamic" ErrorMessage="Reason required"></asp:RequiredFieldValidator></td>
                   </tr>
                   <tr>
                        
                       <td><br /></td><td><br /><asp:Button ID="Button1" runat="server" Text="Apply" class="btn btn-success"  OnClick="Apply_Click"/>&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Clear" class="btn btn-danger" CausesValidation="false" OnClick="Clear_Click"/>
                          </td>
                   </tr>
               </table>
                 </div>

        <div class="viewwrap shadow-lg p-3 mb-5 bg-white rounded">
            <h2 >Leaves Left</h2>
                 <hr />
            <div style="margin-left:60px;">
             <asp:GridView ID="GridView1" CssClass="Grid" DataSourceID="GridDataSource" style="text-align:center;" HeaderStyle-CssClass="header"
        runat="server" AutoGenerateColumns="true">
                 <AlternatingRowStyle BackColor="White" />
                       <EditRowStyle BackColor="#7C6F57" />
                       <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
<HeaderStyle CssClass="header" BackColor="#f37437" Font-Bold="True" ForeColor="White"></HeaderStyle>
                       <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                       <RowStyle BackColor="#F5C9B4" />
                       <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                       <SortedAscendingCellStyle BackColor="#F8FAFA" />
                       <SortedAscendingHeaderStyle BackColor="#246B61" />
                       <SortedDescendingCellStyle BackColor="#D4DFE1" />
                       <SortedDescendingHeaderStyle BackColor="#15524A" />
             </asp:GridView>
          
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:empConnectionString %>" SelectCommand="SELECT * FROM [empleavetype] WHERE ([empid] = @empid)">
                <SelectParameters>
                    <asp:SessionParameter Name="empid" SessionField="eid" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                </div>
            </div>
                </div>
</asp:Content>
