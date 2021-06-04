<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminaddjob.aspx.cs" Inherits="EMS.Adminaddjob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      <!--add job-->
         <div class="addjob">
               <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
                <h2 >Job Details</h2>
                 <hr />
               <table>
                   <tr>
                       <td>
                       <asp:Label ID="Label14" runat="server" Text="Job-ID"></asp:Label>:</td><td>
                           <asp:TextBox ID="jid1" runat="server" CssClass="tbox" placeholder="Enter Job ID"></asp:TextBox></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label15" runat="server" Text="Job-Title"></asp:Label>:</td><td>
                           <asp:TextBox ID="jname" runat="server" CssClass="tbox" placeholder="Enter Job title"></asp:TextBox></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label16" runat="server" Text="Minimum-Salary"></asp:Label>:</td><td>
                           <asp:TextBox ID="minsal" runat="server" CssClass="tbox" placeholder="Enter minimum salary" type="number"></asp:TextBox></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label17" runat="server" Text="Maximum-Salary"></asp:Label>:</td><td>
                           <asp:TextBox ID="maxsal" runat="server" CssClass="tbox" placeholder="Enter maximum salary" type="number"></asp:TextBox></td>
                   </tr>
                   
              
                   <tr>
                        
                       <td><br /></td><td><br /><asp:Button ID="Button9" runat="server" Text="Add" class="btn btn-success" />&nbsp;<asp:Button ID="search2" runat="server" Text="Update" class="btn btn-warning" />
                           <asp:Button ID="Button11" runat="server" Text="Delete" class="btn btn-danger" />
                          </td>
                   </tr>
               </table>
                 </div>
           

         
        <div class="wrapper1  shadow-lg p-3 mb-5 bg-white rounded" >
              <h2>Search</h2>
                <hr />
                <asp:TextBox ID="TextBox5" runat="server" CssClass="tbox" placeholder="Enter Job ID">&nbsp;&nbsp;&nbsp;</asp:TextBox><asp:Button ID="search3" runat="server" Text="Search"  CssClass="search btn btn-primary" />
            </div>
       
             </div>
</asp:Content>
