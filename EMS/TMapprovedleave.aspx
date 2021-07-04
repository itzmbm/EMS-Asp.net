<%@ Page Title="" Language="C#" MasterPageFile="~/TM.Master" AutoEventWireup="true" CodeBehind="TMapprovedleave.aspx.cs" Inherits="EMS.TMapprovedleave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="adddept" >
               <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
                <h2>Approved Leaves</h2>
                 <hr />
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="leaveid">
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

                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:empConnectionString %>" SelectCommand="SELECT [leaveid], [empid], [empname], [fromdate], [tilldate], [nod], [leavetype], [reason], [status] FROM [empleaves] WHERE ([mngid] = @mngid)">
                       <SelectParameters>
                           <asp:SessionParameter Name="mngid" SessionField="tmid" Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                 </div>
        </div>


</asp:Content>
