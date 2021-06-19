<%@ Page Title="" Language="C#" MasterPageFile="~/TM.Master" AutoEventWireup="true" CodeBehind="TMleavereq.aspx.cs" Inherits="EMS.TMleavereq" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="adddept" >
               <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
                <h2>Leave Request</h2>
                 <hr />
               <table class="stat">
  <tr>
    <th>Emp-ID</th>
    <th>Employee Name</th>
      <th>Manager-ID</th>
    <th>From</th>
     <th>Till</th>
      <th>Number of days</th>
      <th>Leave Type</th>
      <th>Reason</th>
      <th>Status</th>
  </tr>
  <tr>
    <td>e01</td>
    <td>abc</td>
    <td>t01</td>
      <td>10/05/2021</td>
      <td>11/05/2021</td>
      <td>2</td>
      <td>Casual</td>
      <td>Family function</td>
      <td><button class="approve">Approve</button><button class="reject">Reject</button></td>

  </tr>
  <tr>
    <td>e01</td>
    <td>abc</td>
    <td>t01</td>
      <td>10/05/2021</td>
      <td>11/05/2021</td>
      <td>2</td>
      <td>Casual</td>
      <td>Family function</td>
      <td><button class="approve">Approve</button><button class="reject">Reject</button></td>
  </tr>
 
  
</table>
                 </div>
        </div>
</asp:Content>
