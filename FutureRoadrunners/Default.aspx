<%@ Page Title="Future Roadrunners" Language="C#" MasterPageFile="~/MasterPages/DSCMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="FutureRoadrunners_Default" %>

<%@ Register src="../Controls/ContactInfo.ascx" tagname="ContactInfo" tagprefix="DSC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="Welcome">
        <h1>Welcome Future Roadrunners!
        </h1>
        <p class="Introduction">
            Dalton State College has been named among the top 10% most affordable 4-year colleges in the nation several years in a row. Choose from 18 bachelor's degrees and 19 associate degrees that will prepare you to take on the world or attend graduate school.  In addition to a personalized education, Dalton State has so much to offer in the way of campus activities.
        </p>
        <DSC:ContactInfo ID="ContactInfo1" runat="server" />
    </section>
</asp:Content>

