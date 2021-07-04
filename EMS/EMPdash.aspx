<%@ Page Title="" Language="C#" MasterPageFile="~/EMP.Master" AutoEventWireup="true" CodeBehind="EMPdash.aspx.cs" Inherits="EMS.EMPdash" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align:center">Dashboard&nbsp;<i class="fas fa-analytics" style="color:black;"></i></h2>
    <div class="dash">
        <div class="wrapper2 shadow-lg p-3 mb-5 bg-white rounded">
            <div class="flip-card-inner">
                 <div class="flip-card-front">
            <h3>Approved Leaves</h3>
            <section  class="sec">
                <img src="images/approved.png" class="icn" /><br />
            <asp:Label ID="totalAL" runat="server"  cssClass="labl" Text=""></asp:Label><br />
                </section>
                     </div>
                <div class="flip-card-back">
      <h3>Approved Leaves</h3> <br />
                    <p>List of all Approved Leaves</p>
                    <p>Click below link</p><br />
      <asp:LinkButton ID="ViewAL" runat="server" OnClick="ViewAL_Click" causesvalidation="false" >View In Detail</asp:LinkButton>
    </div>
                </div>
</div>    
      
        
    <div class="wrapper2 shadow-lg p-3 mb-5 bg-white rounded" >
            <div class="flip-card-inner">
                 <div class="flip-card-front">
            <h3>Rejected Leaves</h3>
            <section class="sec">
                <img src="images/rejected.png" class="icn" /><br />
            <asp:Label ID="totalRL" runat="server" cssClass="labl" Text=""></asp:Label><br />
                </section>
                </div>
                <div class="flip-card-back">
                    <h3>Rejected Leaves</h3> <br />
                    <p>List of all Rejected Leaves</p>
                    <p>Click below link</p><br />
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="ViewRL_Click" causesvalidation="false" >View In Detail</asp:LinkButton>
                </div>
                </div>
        </div>

        <div class="wrapper2 shadow-lg p-3 mb-5 bg-white rounded"> 
                        <div class="flip-card-inner">
                 <div class="flip-card-front">
            <h3>View Salary</h3>
            <section  class="sec">
                <img src="images/salary.png" class="icn" /><br />
            <asp:Label ID="VS" runat="server" cssClass="labl" Text=""></asp:Label><br />
                </section>
                 </div>
               <div class="flip-card-back">
                   <h3>View Salary</h3> <br />
                   <p>Salary details</p>
                    <p>Click below link</p><br />
                         <asp:LinkButton ID="LinkButton3" runat="server" OnClick="Viewsal_Click" causesvalidation="false" >View In Detail</asp:LinkButton>
                                 </div>
        </div>
            </div>

        <div class="wrapper2 shadow-lg p-3 mb-5 bg-white rounded"> 
                        <div class="flip-card-inner">
                 <div class="flip-card-front">
            <h3>View Profile</h3>
            <section  class="sec">
                <img src="images/profile.png" class="icn" /><br />
            <asp:Label ID="VP" runat="server" cssClass="labl" Text=""></asp:Label><br />
                </section>
                 </div>
               <div class="flip-card-back">
                   <h3>View Profile</h3> <br />
                   <p>Profile details</p>
                    <p>Click below link</p><br />
                         <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Viewpro_Click" causesvalidation="false" >View In Detail</asp:LinkButton>
                                 </div>
        </div>
            </div>

     
        </div>
</asp:Content>
