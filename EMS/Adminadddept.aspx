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
                           <asp:TextBox ID="did" runat="server" CssClass="tbox" placeholder="Enter department ID"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="did" cssClass="val" ErrorMessage="Department-ID required"></asp:RequiredFieldValidator></td>
                   </tr>
                   <tr>
                       
                       <td>
                       <asp:Label ID="Label11" runat="server" Text="Department-Name"></asp:Label>:</td><td>
                           <asp:TextBox ID="dname" runat="server" CssClass="tbox" placeholder="Enter department name"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="dname" cssClass="val" ErrorMessage="Department-Name required"></asp:RequiredFieldValidator> </td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label12" runat="server" Text="Manager-ID"></asp:Label>:</td><td>
                         <asp:Textbox ID="mid" runat="server" CssClass="tbox" value="" placeholder="Enter Manager-Id"></asp:Textbox>  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="mid" cssClass="val" ErrorMessage="Manager-ID required"></asp:RequiredFieldValidator></td>
                   </tr>
                    <tr>
                       <td>
                       <asp:Label ID="Label13" runat="server" Text="Location"></asp:Label>:</td><td>
                           <asp:TextBox ID="location" runat="server" CssClass="tbox" placeholder="Enter location"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="location" cssClass="val" ErrorMessage="Location required"></asp:RequiredFieldValidator></td>
                   </tr>
              
                   <tr>
                        
                       <td><br /></td><td><br /><asp:Button ID="Add" runat="server" Text="Add" class="btn btn-success" OnClick="Add_Click"/>&nbsp;<asp:Button ID="Update" runat="server" Text="Update" class="btn btn-warning" OnClick="Update_Click" />
                           <asp:Button ID="Delete" runat="server" Text="Delete" class="btn btn-danger" OnClick="Delete_Click" />
                          </td>
                   </tr>
               </table>
                 </div>

        <div class="wrapper1  shadow-lg p-3 mb-5 bg-white rounded" >
              <h2>Search</h2>
                <hr />
                <asp:TextBox ID="search" runat="server" CssClass="tbox" placeholder="Enter department ID">&nbsp;&nbsp;&nbsp;</asp:TextBox><asp:Button ID="searchbtn" runat="server" Text="Search" CausesValidation="false" CssClass="search btn btn-primary" OnClick="Searchbtn_Click"/>
            </div>
       
             </div>
</asp:Content>
