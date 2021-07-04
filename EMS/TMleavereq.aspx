<%@ Page Title="" Language="C#" MasterPageFile="~/TM.Master" AutoEventWireup="true" CodeBehind="TMleavereq.aspx.cs" Inherits="EMS.TMleavereq" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="adddept" >
               <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
                <h2>Leave Request</h2>
                 <hr />
                   <asp:Button ID="Button1" runat="server" class="btn btn-success" style="text-align:center;" Text="Submit" OnClick="SubmitClick" /><br /><br />
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                       <AlternatingRowStyle BackColor="White" />
                       <Columns>
                           <asp:TemplateField HeaderText="Approve/Reject">
                               <ItemTemplate>
                                   <asp:RadioButton ID="RadioButton1" GroupName="status" Text="Approve" runat="server" />
                                   <asp:RadioButton ID="RadioButton2" GroupName="status" Text="Reject" runat="server" />
                               </ItemTemplate>
                               <HeaderStyle HorizontalAlign="Center" />
                           </asp:TemplateField>
                           <asp:BoundField DataField="leaveid" HeaderText="Leave ID">
                           <HeaderStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="empid" HeaderText="Empid">
                           <HeaderStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="empname" HeaderText="EmpName">
                           <HeaderStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="fromdate" HeaderText="From Date">
                           <HeaderStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="tilldate" HeaderText="Till Date">
                           <HeaderStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="nod" HeaderText="No of Days">
                           <HeaderStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="leavetype" HeaderText="Leavetype">
                           <HeaderStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="reason" HeaderText="Reason">
                           <HeaderStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                       </Columns>
                     <EditRowStyle BackColor="#7C6F57" />
                       <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                       <HeaderStyle BackColor="#f37437" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                       <RowStyle BackColor="#F5C9B4" />
                       <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                       <SortedAscendingCellStyle BackColor="#F8FAFA" />
                       <SortedAscendingHeaderStyle BackColor="#246B61" />
                       <SortedDescendingCellStyle BackColor="#D4DFE1" />
                       <SortedDescendingHeaderStyle BackColor="#15524A" />
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:empConnectionString %>" SelectCommand="SELECT * FROM [empleaves] WHERE (([mngid] = @mngid) AND ([status] = @status))">
                       <SelectParameters>
                           <asp:SessionParameter Name="mngid" SessionField="tmid" Type="String" />
                           <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                   
                  <%-- <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
                 </div>
        </div>
</asp:Content>
