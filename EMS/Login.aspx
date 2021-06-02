<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EMS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
     <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
   
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <form id="form1" runat="server">
        <!-- nav bar -->
    <div class="nav">
        <ul class="navv">
            <span class="nimg">
                <li class="li"><img src="images/Employee.png" style="width: 350px;height: 70px;margin-top: 05px;margin-left: 10px;"><span style="color: white;text-align: center;"></span></li>
            </span>
            <div class="menu">
                <li class="li"><a class="a" href="index.html">Home</a></li>
                <li class="li"><a class="loginbtn a" href="Login.aspx">Login</a></li>
                <li class="li"><a class="a" href="">About us</a></li>
                <li class="li"><a class="a" href="">Contact us</a></li>
            </div>
        </ul>
    </div>
      
            <div class="wrapper shadow-lg p-3 mb-5shadow-lg p-3 mb-5 bg-white rounded bg-white rounded opacity: 0.9 ;">
                <div class="log">
                    <h3>Log in</h3>
                    <hr />
                    <img src="images/usn.png" class="icon" />&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="">Select User type</asp:ListItem> 
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>HR</asp:ListItem>
                        <asp:ListItem>Team Manager</asp:ListItem>
                        <asp:ListItem>Employee</asp:ListItem>
                    </asp:DropDownList><br /><br />

                   <img src="images/id.png"  class="icon"/>&nbsp;<asp:TextBox ID="username" runat="server" placeholder="ID"></asp:TextBox><br /><br />
                     <img src="images/pwd.png"  class="icon"/>&nbsp;<asp:TextBox ID="password" runat="server" placeholder="Password"></asp:TextBox><br /><br />
                    <a href="#">Forgot your password?</a><br /><br />
                    <asp:Button ID="lgntbn" CssClass="lgnbtn" runat="server" Text="Login" />

                </div>
        </div>


        </form>
        </body>
</html>
