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
                           <asp:TextBox ID="jid" runat="server" CssClass="tbox" placeholder="Enter Job ID"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="jid" cssClass="val" ErrorMessage="Job-ID required"></asp:RequiredFieldValidator></td>
                   </tr>
                   <tr>
                       
                       <td>
                       <asp:Label ID="Label15" runat="server" Text="Job-Title"></asp:Label>:</td><td>
                           <asp:TextBox ID="jtitle" runat="server" CssClass="tbox" placeholder="Enter Job title"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="jtitle" CssClass="val" ErrorMessage="Job-Title required"></asp:RequiredFieldValidator></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label16" runat="server" Text="Minimum-Salary"></asp:Label>:</td><td>
                           <asp:TextBox ID="minsal" runat="server" CssClass="tbox" placeholder="Enter minimum salary" type="number"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="minsal" cssClass="val" ErrorMessage="Minimum salary required"></asp:RequiredFieldValidator></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label17" runat="server" Text="Maximum-Salary"></asp:Label>:</td><td>
                           <asp:TextBox ID="maxsal" runat="server" CssClass="tbox" placeholder="Enter maximum salary" type="number"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="maxsal" cssClass="val" ErrorMessage="Maximum salary required"></asp:RequiredFieldValidator></td>
                   </tr>
                   
              
                   <tr>
                        
                       <td><br /></td><td><br /><asp:Button ID="Add" runat="server" Text="Add" class="btn btn-success" OnClick="Add_Click"/>&nbsp;<asp:Button ID="Update" runat="server" Text="Update" class="btn btn-warning" OnClick="Update_Click" />
                           <asp:Button ID="Delete" runat="server" Text="Delete" class="btn btn-danger" OnClick="Delete_Click"/>
                          </td>
                   </tr>
               </table>
                 </div>
           

         
        <div class="wrapper1  shadow-lg p-3 mb-5 bg-white rounded" >
              <h2>Search</h2>
                <hr />
                <asp:TextBox ID="search" runat="server" CssClass="tbox" placeholder="Enter Job ID">&nbsp;&nbsp;&nbsp;</asp:TextBox><asp:Button ID="searchbtn" runat="server" Text="Search" CausesValidation="false" CssClass="search btn btn-primary" OnClick="Searchbtn_Click"/>
            </div>
       
             </div>
</asp:Content>
