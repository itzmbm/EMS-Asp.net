<%@ Page Title="" Language="C#" MasterPageFile="~/LoginPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EMS.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper shadow-lg p-3 mb-5 shadow-lg p-3 mb-5 bg-white">
                <div class="log">
                    <h3 style="text-align:center;">Log in</h3>
                    <hr />
                    
                    <img src="images/usn.png" class="icon" />&nbsp;<asp:DropDownList ID="usertype" runat="server" cssClass="tbox" style="width:180px;">
                        <asp:ListItem Value="">Select User type</asp:ListItem> 
                        <asp:ListItem Value="Admin">Admin</asp:ListItem>
                        <asp:ListItem Value="TM">Team Manager</asp:ListItem>
                        <asp:ListItem Value="EMP">Employee</asp:ListItem>
                    </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Type required" ControlToValidate ="usertype" Display="Dynamic" style="color:red;"></asp:RequiredFieldValidator><br /><br />
                        
                   
                   <img src="images/id.png"  class="icon"/>&nbsp;<asp:TextBox ID="userid" runat="server" placeholder="User ID" cssClass="tbox"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="User-ID required" ControlToValidate ="userid" Display="Dynamic" style="color:red;"></asp:RequiredFieldValidator><br /><br />
                     <img src="images/pwd.png"  class="icon"/>&nbsp;<asp:TextBox ID="password" runat="server" type="password" placeholder="Password" cssClass="tbox"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password required" ControlToValidate ="password" Display="Dynamic" style="color:red;"></asp:RequiredFieldValidator><br /><br />
                    <a href="ForgotPassword.aspx" style="text-align:center;">Forgot your password?</a><br /><br />
                       
                    <asp:Button ID="lgntbn" CssClass="lgnbtn" runat="server"  Text="Login" OnClick="lgntbn_Click" />

                </div>
        </div>
</asp:Content>
