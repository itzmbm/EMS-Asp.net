<%@ Page Title="" Language="C#" MasterPageFile="~/EMP.Master" AutoEventWireup="true" CodeBehind="EMPviewsal.aspx.cs" Inherits="EMS.EMPviewsal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="adddept" >
               <div class="wrapper shadow-lg p-3 mb-5 bg-white rounded">
                  
                <h2>Salary Details</h2>
                 <hr />
                    <div style="text-align:center;">
                       <button class="btn btn-primary">Print</button>
                   </div>
               <table class="stat">
  
  <tr>
    <td>Emp-ID</td>
    <td>e01</td>
  </tr>
 <tr>
    <td>Emp-Name</td>
    <td>abc</td>
  </tr>
  <tr>
    <td>Basic Salary</td>
    <td>45000</td>
  </tr>
    <tr>
    <td>HRA</td>
    <td>10000</td>
  </tr>
                    <tr>
    <td>Medical Allowance</td>
    <td>5000</td>
  </tr>
                    <tr>
    <td>Fuel Allowance</td>
    <td>1000</td>
  </tr>
   <tr>
    <td>Phone/Internet</td>
    <td>1000</td>
  </tr>
    <tr>
    <td>Tax Deduction</td>
    <td>2250</td>
  </tr>
 <tr>
    <td>Other Deduction</td>
    <td>1250</td>
  </tr>
   <tr>
    <td>Gross Salary</td>
    <td>62000</td>
  </tr>
   <tr>
    <td>Total Deduction</td>
    <td>3500</td>
  </tr>
    <tr>
    <td>Net Salary</td>
    <td>58500</td>
  </tr>  
                  
</table>
                 </div>

        </div>
</asp:Content>
