<%@ Page Title="" Language="C#" MasterPageFile="~/EMP.Master" AutoEventWireup="true" CodeBehind="EMPviewsal.aspx.cs" Inherits="EMS.EMPviewsal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="adddept" >
               <div class="viewwrap shadow-lg p-3 mb-5 bg-white rounded">
                  
                <h2>Salary Details</h2>
                 <hr />
                    <div style="text-align:center;">
                     
                        <asp:Button ID="Prnt" runat="server" Text="Print Pay Slip" style="width:150px;" OnClick="Print" cssClass="btn btn-primary" />
                      
                        
                   </div>
                   <br />
                   
                   <div style="margin-left:60px;">
                   <asp:GridView ID="GridView1" CssClass="Grid" DataSourceID="GridDataSource" HeaderStyle-CssClass="header"
        runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"> 
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
                   
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:empConnectionString %>" SelectCommand="SELECT * FROM [empsalary] WHERE ([empid] = @empid)">
                       <SelectParameters>
                           <asp:SessionParameter Name="empid" SessionField="eid" Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                </div>
                   </div>

        </div>
</asp:Content>
