<%@ Page Title="" Language="C#" MasterPageFile="~/EMP.Master" AutoEventWireup="true" CodeBehind="EMPleavestat.aspx.cs" Inherits="EMS.EMPleavestat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="adddept" >
               <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
                <h2>Pending Leave Status</h2>
                 <hr />
                   <asp:Button ID="Button1" runat="server" class="btn btn-danger" style="text-align:center;width:150px;" Text="Cancel Leave" OnClick="CancelClick" /><br /><br />
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                       <AlternatingRowStyle BackColor="White" />
                       <Columns>
                           <asp:TemplateField HeaderText="Select">
                               <ItemTemplate>
                                   <asp:CheckBox ID="CheckBox1" Text="Select" runat="server" />
                               </ItemTemplate>
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
                           <asp:BoundField DataField="mngid" HeaderText="Mngid">
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
                           <asp:BoundField DataField="leavetype" HeaderText="Leave Type">
                           <HeaderStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="reason" HeaderText="Reason">
                           <HeaderStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="status" HeaderText="Status">
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
                   
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:empConnectionString %>" SelectCommand="SELECT * FROM [empleaves] WHERE (([empid] = @empid) AND ([status] = @status))">
                       <SelectParameters>
                           <asp:SessionParameter Name="empid" SessionField="eid" Type="String" />
                           <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                   
                 </div>
        </div>
</asp:Content>
