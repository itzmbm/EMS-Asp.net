<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminaddemp.aspx.cs" Inherits="EMS.Adminaddemp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--add--->
    <div class="addemp">
        <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
            <h2>Employee Details</h2>
            <hr />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Emp-ID"></asp:Label>:</td>
                    <td>
                        <asp:TextBox ID="empid" runat="server" CssClass="tbox" placeholder="Enter employee ID"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="empid" CssClass="val" ErrorMessage="Emp-ID required"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Emp-Name"></asp:Label>:</td>
                    <td>
                        <asp:TextBox ID="empname" runat="server" CssClass="tbox" placeholder="Enter employee name"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="empname" CssClass="val" ErrorMessage="Emp-name required"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>:</td>
                    <td>
                        <asp:TextBox ID="email" runat="server" CssClass="tbox" placeholder="Enter email id"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" Display="Dynamic" CssClass="val" ErrorMessage="Email required"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ControlToValidate="email" CssClass="val" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Phone No"></asp:Label>:</td>
                    <td>
                        <asp:TextBox ID="phone" runat="server" CssClass="tbox" type="number" placeholder="Enter phone no"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="phone" Display="Dynamic" CssClass="val" ErrorMessage="Phone no required"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="phone" ErrorMessage="Phone number should be 10 numbers" Display="Dynamic" CssClass="val" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>

                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Hire-Date"></asp:Label>:</td>
                    <td>
                        <asp:TextBox ID="hiredate" runat="server" placeholder="From" type="date" CssClass="tbox"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="hiredate" CssClass="val" ErrorMessage="Hire date required"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Manager-ID"></asp:Label>:</td>
                    <td>
                        <asp:TextBox ID="mid" runat="server" CssClass="tbox" placeholder="Enter manager ID"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="mid" CssClass="val" ErrorMessage="Manager-ID required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Department-ID"></asp:Label>:</td>
                    <td>
                        <asp:DropDownList ID="deptid" AppendDataBoundItems="true" DataTextField="deptname" DataValueField="deptid"  runat="server" CssClass="tbox" Width="180px"><asp:ListItem Value="">Select Department</asp:ListItem></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="deptid" CssClass="val" ErrorMessage="Department-ID required"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Job-ID"></asp:Label>:</td>
                    <td>
                        <asp:DropDownList ID="jid" runat="server" CssClass="tbox" AppendDataBoundItems="true" DataTextField="jobtitle" DataValueField="jobid" Width="180px"><asp:ListItem Value="">Select Job Title</asp:ListItem></asp:DropDownList></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="jid" CssClass="val" ErrorMessage="Job-ID required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Gender"></asp:Label>:</td>
                    <td>
                        <asp:RadioButtonList runat="server" ID="gender" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator runat="server" ID="genderRequired" Display="Dynamic" ControlToValidate="gender" CssClass="val" Style="margin-left: 59px;" ErrorMessage="Gender is required"></asp:RequiredFieldValidator>


                    </td>
                </tr>
                <%-- <tr>
                       <td>
                       <asp:Label ID="Label10" runat="server" Text="Salary"></asp:Label>:</td><td>
                           <asp:TextBox ID="salary" runat="server" CssClass="tbox" type="number" placeholder="Enter salary per annum" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate ="salary" CssClass="val" ErrorMessage="Salary required"></asp:RequiredFieldValidator>
                          </td>
                   </tr>--%>

                <tr>

                    <td>
                        <br />
                    </td>
                    <td>
                        <br />
                        <asp:Button ID="Add" runat="server" Text="Add" class="btn btn-success" OnClick="Add_Click" />&nbsp;<asp:Button ID="Update" runat="server" Text="Update" class="btn btn-warning" OnClick="Update_Click" />
                        <asp:Button ID="Delete" runat="server" Text="Delete" class="btn btn-danger" OnClick="Delete_Click" />
                    </td>
                </tr>
            </table>
        </div>



        <div class="wrapper1 shadow-lg p-3 mb-5 bg-white rounded">
            <h2>Search</h2>
            <hr />
            <asp:TextBox ID="search" runat="server" CssClass="tbox" placeholder="Enter employee ID">&nbsp;&nbsp;&nbsp;</asp:TextBox><asp:Button ID="searchbtn" runat="server" Text="Search" CausesValidation="false" CssClass="search btn btn-primary" OnClick="Searchbtn_Click" />
        </div>
    </div>
</asp:Content>

