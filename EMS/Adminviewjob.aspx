﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminviewjob.aspx.cs" Inherits="EMS.Adminviewjob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="view" >
               <div class="viewwrap shadow-lg p-3 mb-5 bg-white rounded">
                <h2>Job Details</h2>
                 <hr />
                   <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="jobid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                       <AlternatingRowStyle BackColor="White" />
                       <Columns>
                           <asp:BoundField DataField="jobid" HeaderText="jobid" ReadOnly="True" SortExpression="jobid" />
                           <asp:BoundField DataField="jobtitle" HeaderText="jobtitle" SortExpression="jobtitle" />
                           <asp:BoundField DataField="minsal" HeaderText="minsal" SortExpression="minsal" />
                           <asp:BoundField DataField="maxsal" HeaderText="maxsal" SortExpression="maxsal" />
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
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:empConnectionString %>" SelectCommand="SELECT * FROM [jobdetails]"></asp:SqlDataSource>
                   </div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1"></asp:Repeater>
        </div>
</asp:Content>
