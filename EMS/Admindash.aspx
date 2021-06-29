<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admindash.aspx.cs" Inherits="EMS.Admindash" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--dashboard-->
    <h2 style="text-align:center">Dashboard&nbsp;<i class="fas fa-analytics" style="color:black;"></i></h2>
    <div class="dash">
        <div class="wrapper2 shadow-lg p-3 mb-5 bg-white rounded">
            <div class="flip-card-inner">
                 <div class="flip-card-front">
            <h3>Total Employees</h3>
            <section  class="sec">
                <img src="images/empicon.png" class="icn" style="width:130px;"/><br />
            <asp:Label ID="totalemp" runat="server"  cssClass="labl" Text="0"></asp:Label><br />
                </section>
                     </div>
                <div class="flip-card-back">
      <h3>Total Employees</h3> <br />
                    <p>List of Employee details</p>
                    <p>Click below link</p><br />
      <asp:LinkButton ID="Viewemp" runat="server" OnClick="Viewemp_Click" causesvalidation="false" >View In Detail</asp:LinkButton>
    </div>
                </div>
</div>    
      
        
    <div class="wrapper2 shadow-lg p-3 mb-5 bg-white rounded" >
            <div class="flip-card-inner">
                 <div class="flip-card-front">
            <h3>Total Managers</h3>
            <section class="sec">
                <img src="images/mngicon.png" class="icn" /><br />
            <asp:Label ID="totaltm" runat="server" cssClass="labl" Text="0"></asp:Label><br />
                </section>
                </div>
                <div class="flip-card-back">
                    <h3>Total Managers</h3> <br />
                    <p>List of Managers details</p>
                    <p>Click below link</p><br />
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="Viewtm_Click" causesvalidation="false" >View In Detail</asp:LinkButton>
                </div>
                </div>
        </div>

        <div class="wrapper2 shadow-lg p-3 mb-5 bg-white rounded"> 
                        <div class="flip-card-inner">
                 <div class="flip-card-front">
            <h3>Total Departments</h3>
            <section  class="sec">
                <img src="images/depticon.png" class="icn" /><br />
            <asp:Label ID="totaldept" runat="server" cssClass="labl" Text="0"></asp:Label><br />
                </section>
                 </div>
               <div class="flip-card-back">
                   <h3>Total Departments</h3> <br />
                   <p>List of Department details</p>
                    <p>Click below link</p><br />
                         <asp:LinkButton ID="LinkButton3" runat="server" OnClick="Viewdept_Click" causesvalidation="false" >View In Detail</asp:LinkButton>
                                 </div>
        </div>
            </div>

        <div class="wrapper2 shadow-lg p-3 mb-5 bg-white rounded" >
             <div class="flip-card-inner">
                 <div class="flip-card-front">
            <h3>Total Jobs</h3>
            <section  class="sec">
                <img src="images/jobicon.png" class="icn" /><br />

            <asp:Label ID="totaljob" runat="server" cssClass="labl" Text="0"></asp:Label><br />
                </section>
                     </div>
                 <div class="flip-card-back">
                     <h3>Total Jobs</h3> <br />
                     <p>List of Job details</p>
                    <p>Click below link</p><br />
            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="Viewjob_Click" causesvalidation="false" >View In Detail</asp:LinkButton>
                     </div>
        </div>
    </div>
        </div>
</asp:Content>
