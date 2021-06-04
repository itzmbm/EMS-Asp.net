<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminadddept.aspx.cs" Inherits="EMS.Adminadddept" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <!--add department-->
        <div class="adddept" >
               <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
                <h2 >Department Details</h2>
                 <hr />
               <table>
                   <tr>
                       <td>
                       <asp:Label ID="Label10" runat="server" Text="Department-ID"></asp:Label>:</td><td>
                           <asp:TextBox ID="did1" runat="server" CssClass="tbox" placeholder="Enter department ID"></asp:TextBox></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label11" runat="server" Text="Department-Name"></asp:Label>:</td><td>
                           <asp:TextBox ID="dname" runat="server" CssClass="tbox" placeholder="Enter department name"></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label12" runat="server" Text="Manager-ID"></asp:Label>:</td><td>
                           <asp:TextBox ID="mid1" runat="server" CssClass="tbox" placeholder="Enter manager id"></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label13" runat="server" Text="Location"></asp:Label>:</td><td>
                           <asp:TextBox ID="location" runat="server" CssClass="tbox" placeholder="Enter location"></asp:TextBox></td>
                   </tr>
              
                   <tr>
                        
                       <td><br /></td><td><br /><asp:Button ID="Button5" runat="server" Text="Add" class="btn btn-success" />&nbsp;<asp:Button ID="Button6" runat="server" Text="Update" class="btn btn-warning" />
                           <asp:Button ID="Button7" runat="server" Text="Delete" class="btn btn-danger" />
                          </td>
                   </tr>
               </table>
                 </div>

        <div class="wrapper1  shadow-lg p-3 mb-5 bg-white rounded" >
              <h2>Search</h2>
                <hr />
                <asp:TextBox ID="TextBox8" runat="server" CssClass="tbox" placeholder="Enter department ID">&nbsp;&nbsp;&nbsp;</asp:TextBox><asp:Button ID="search1" runat="server" Text="Search"  CssClass="search btn btn-primary" />
            </div>
       
             </div>
</asp:Content>
