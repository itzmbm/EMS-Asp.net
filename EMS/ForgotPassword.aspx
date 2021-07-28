<%@ Page Title="" Language="C#" MasterPageFile="~/LoginPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="EMS.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="adddept" >
               <div class="wrapper1 shadow-lg p-3 mb-5 bg-white rounded">
                <h2>Forgot Password</h2>
                 <hr />
              <table>
                  
                   <tr>
                       <td>
                       <asp:Label ID="Label1" runat="server" Text="Enter Your Registered Email Id"></asp:Label>:</td><td>
                           <asp:TextBox ID="txtEmailID" runat="server" CssClass="tbox" placeholder="Enter Email Id" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmailID" CssClass="val" Display="Dynamic"  ErrorMessage="Email Id required"></asp:RequiredFieldValidator></td>
                   </tr>
                   
                  <tr><td></td><td>
                      <br /><asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-success"  OnClick="Submit_Click"/>
                               </td></tr>
                  <tr>
                      <td></td>
                      <td>
                          <asp:Label ID="lblResetPassMsg" CssClass="text-success" ForeColor="Red" runat="server"></asp:Label>
                      </td>
                  </tr>
                  </table>
                 </div>
        </div>
</asp:Content>
