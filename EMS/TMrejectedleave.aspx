<%@ Page Title="" Language="C#" MasterPageFile="~/TM.Master" AutoEventWireup="true" CodeBehind="TMrejectedleave.aspx.cs" Inherits="EMS.TMrejectedleave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="adddept" >
               <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
                <h2>Rejected Leave</h2>
                 <hr />
                   <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="leaveid">
                       <AlternatingRowStyle BackColor="White" />
                       <Columns>
                           <asp:BoundField DataField="leaveid" HeaderText="leaveid" SortExpression="leaveid" InsertVisible="False" ReadOnly="True" />
                           <asp:BoundField DataField="empid" HeaderText="empid" SortExpression="empid" />
                           <asp:BoundField DataField="empname" HeaderText="empname" SortExpression="empname" />
                           <asp:BoundField DataField="fromdate" HeaderText="fromdate" SortExpression="fromdate" />
                           <asp:BoundField DataField="tilldate" HeaderText="tilldate" SortExpression="tilldate" />
                           <asp:BoundField DataField="nod" HeaderText="nod" SortExpression="nod" />
                           <asp:BoundField DataField="leavetype" HeaderText="leavetype" SortExpression="leavetype" />
                           <asp:BoundField DataField="reason" HeaderText="reason" SortExpression="reason" />
                           <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
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
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:empConnectionString %>" SelectCommand="SELECT [leaveid], [empid], [empname], [fromdate], [tilldate], [nod], [leavetype], [reason], [status] FROM [empleaves] WHERE (([mngid] = @mngid) AND ([status] = @status))" DeleteCommand="DELETE FROM [empleaves] WHERE [leaveid] = @leaveid" InsertCommand="INSERT INTO [empleaves] ([empid], [empname], [fromdate], [tilldate], [nod], [leavetype], [reason], [status]) VALUES (@empid, @empname, @fromdate, @tilldate, @nod, @leavetype, @reason, @status)" UpdateCommand="UPDATE [empleaves] SET [empid] = @empid, [empname] = @empname, [fromdate] = @fromdate, [tilldate] = @tilldate, [nod] = @nod, [leavetype] = @leavetype, [reason] = @reason, [status] = @status WHERE [leaveid] = @leaveid">
                       <DeleteParameters>
                           <asp:Parameter Name="leaveid" Type="Int32" />
                       </DeleteParameters>
                       <InsertParameters>
                           <asp:Parameter Name="empid" Type="String" />
                           <asp:Parameter Name="empname" Type="String" />
                           <asp:Parameter DbType="Date" Name="fromdate" />
                           <asp:Parameter DbType="Date" Name="tilldate" />
                           <asp:Parameter Name="nod" Type="Int32" />
                           <asp:Parameter Name="leavetype" Type="String" />
                           <asp:Parameter Name="reason" Type="String" />
                           <asp:Parameter Name="status" Type="String" />
                       </InsertParameters>
                       <SelectParameters>
                           <asp:SessionParameter Name="mngid" SessionField="tmid" Type="String" />
                           <asp:Parameter DefaultValue="Rejected" Name="status" Type="String" />
                       </SelectParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="empid" Type="String" />
                           <asp:Parameter Name="empname" Type="String" />
                           <asp:Parameter DbType="Date" Name="fromdate" />
                           <asp:Parameter DbType="Date" Name="tilldate" />
                           <asp:Parameter Name="nod" Type="Int32" />
                           <asp:Parameter Name="leavetype" Type="String" />
                           <asp:Parameter Name="reason" Type="String" />
                           <asp:Parameter Name="status" Type="String" />
                           <asp:Parameter Name="leaveid" Type="Int32" />
                       </UpdateParameters>
                   </asp:SqlDataSource>
                 </div>
        </div>
</asp:Content>
