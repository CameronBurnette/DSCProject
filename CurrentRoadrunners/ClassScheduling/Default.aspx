<%@ Page Title="Class Scheduling" Language="C#" MasterPageFile="~/MasterPages/DSCMaster - Student.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="CurrentRoadrunners_ClassScheduling_Default" %>

<%@ Register Src="~/Controls/ClassSchedule.ascx" TagPrefix="uc1" TagName="ClassSchedule" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="StudentContent" Runat="Server">
    <div id="schedule" >
    <uc1:ClassSchedule runat="server" ID="ClassSchedule" />
    </div>
</asp:Content>

