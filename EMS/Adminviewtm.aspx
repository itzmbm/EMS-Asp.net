﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminviewtm.aspx.cs" Inherits="EMS.Adminviewtm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="view" >
               <div class="viewwrap shadow-lg p-3 mb-5 bg-white rounded">
                <h2>Team Managers Details</h2>
                 <hr />
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="empid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                       <AlternatingRowStyle BackColor="White" />
                       <Columns>
                           <asp:BoundField DataField="empid" HeaderText="empid" ReadOnly="True" SortExpression="empid" />
                           <asp:BoundField DataField="empname" HeaderText="empname" SortExpression="empname" />
                           <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                           <asp:BoundField DataField="phoneno" HeaderText="phoneno" SortExpression="phoneno" />
                           <asp:BoundField DataField="hiredate" HeaderText="hiredate" SortExpression="hiredate" />
                           <asp:BoundField DataField="mngid" HeaderText="mngid" SortExpression="mngid" />
                           <asp:BoundField DataField="deptid" HeaderText="deptid" SortExpression="deptid" />
                           <asp:BoundField DataField="jobid" HeaderText="jobid" SortExpression="jobid" />
                           <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
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
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:empConnectionString %>" SelectCommand="SELECT [empid], [empname], [email], [phoneno], [hiredate], [mngid], [deptid], [jobid], [gender] FROM [empdetails] WHERE ([jobid] = @jobid)">
                       <SelectParameters>
                           <asp:Parameter DefaultValue="J101" Name="jobid" Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                   </div>
         </div>
</asp:Content>
