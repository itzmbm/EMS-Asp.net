<%@ Page Title="" Language="C#" MasterPageFile="~/TM.Master" AutoEventWireup="true" CodeBehind="TMchangepwd.aspx.cs" Inherits="EMS.TMchangepwd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="adddept" >
               <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
                <h2>Change Password</h2>
                 <hr />
              <table>
                   <tr>
                       <td>
                       <asp:Label ID="Label1" runat="server" Text="Current Password"></asp:Label>:</td><td>
                           <asp:TextBox ID="cp" runat="server" CssClass="tbox" placeholder="Enter Current Password" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cp" CssClass="val" Display="Dynamic" ErrorMessage="Current Password required"></asp:RequiredFieldValidator></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>:</td><td>
                           <asp:TextBox ID="np" runat="server" CssClass="tbox" placeholder="Enter New Password" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="np" CssClass="val" Display="Dynamic"  ErrorMessage="New password required"></asp:RequiredFieldValidator></td>
                   </tr>
                   <tr>
                       <td>
                       <asp:Label ID="Label3" runat="server" Text="Re-Enter New Password"></asp:Label>:</td><td>
                           <asp:TextBox ID="rnp" runat="server" CssClass="tbox" placeholder="Re-Enter New Password" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="rnp" CssClass="val" Display="Dynamic" ErrorMessage="Re-Enter password required"></asp:RequiredFieldValidator>
                           <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="np"  ControlToValidate="rnp" Display="Dynamic" ErrorMessage="Re-Entered password doesn't match" ForeColor="Red"   Operator="Equal" Type="String"></asp:CompareValidator>
                                                                                                            </td>
                   </tr>
                  <tr><td></td><td>
                      <br /><asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-success"  OnClick="Submit_Click"/>&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Clear" class="btn btn-danger" CausesValidation="false" OnClick="Clear_Click"/>
                               </td></tr>
                  </table>
                 </div>
        </div>
</asp:Content>
