<%@ Page Title="Current Roadrunners" Language="C#" MasterPageFile="~/MasterPages/DSCMaster - Student.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="CurrentRoadrunners_Default" %>

<%@ Register Src="~/Controls/ResourceLinkTable.ascx" TagPrefix="uc1" TagName="ResourceLinkTable" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="StudentContent" Runat="Server">
       <div id="MainContent">
           <asp:Image ID="StudentImage" runat="server" ImageUrl="~/App_Themes/DSC_Theme/Images/current-students2.jpg" border="solid"/>
           <div id="secondary">
               <asp:Table ID="Table2" runat="server">
                   <asp:TableHeaderRow>
                        <asp:TableHeaderCell CssClass="StudentCol1-1">Upcoming Events</asp:TableHeaderCell>
                        <asp:TableHeaderCell CssClass="StudentCol1-1">Important Dates</asp:TableHeaderCell>
                   </asp:TableHeaderRow>
                   <asp:TableRow CssClass="StudentCol1-2">
                        <asp:TableHeaderCell >
                            <h1><a href="https://www.daltonstate.edu/about/calendar.cms?date=2016-Nov-03&view=day&news_id=227&recurrence_id=341">DSC Career Fair - 11/4/2016</a></h1>
                            <p>Come and take part in the DSC Career Fair on Thursday, November 4th. Many businesses from the community will be here to recruit!</p>

                            <h1><a href="https://www.daltonstate.edu/about/calendar.cms?date=2016-Nov-15&view=day&news_id=236&recurrence_id=347">Snack n Chat - 11/15/2016</a></h1>
                            <p>Campus event to improve leadership skills and network with fellow students and community members.</p>

                            <h1><a href="https://www.daltonstate.edu/about/calendar.cms?date=2016-Nov-17&view=day&news_id=228&recurrence_id=342">Interviewing 101 - 11/17/2016</a></h1>
                            <p>Take part in this free interviewing workshop to improve your resume and interviewing skills.</p>
                        </asp:TableHeaderCell>
                        <asp:TableCell HorizontalAlign="Center">
                            <h1>November 23-25</h1>
                            <p>Thanksgiving Break</p>
                            <h1>December 5</h1>
                            <p>Last class for A & C sessions</p>
                            <h1>December 6-12</h1>
                            <p>Finals for A & C sessions start</p>
                            <h1>December 10</h1>
                            <p>Advanced Registration for Spring semester closes</p>
                        </asp:TableCell>
                   </asp:TableRow>
               </asp:Table>
           </div>
           <div id="secondary2"> 
                       <div class="StudentCol2-1">
                           <h1>Student Resources</h1>
                       </div>
                       <div class="resourceLinks">
                          <uc1:ResourceLinkTable runat="server" ID="ResourceLinkTable" />      
                       </div>
            </div>
       </div>
      
</asp:Content>

