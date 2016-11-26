<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ResourceLinkTable.ascx.cs" Inherits="Controls_ResourceLinkTable" %>


<style>
    .divTable {
        display: table;
        width: 100%;
    }

    .divTableRow {
        display: table-row;
    }

    .divTableHeading {
        background-color: #EEE;
        display: table-header-group;
    }

    .divTableCell, .divTableHead {
        border: 1px solid #999999;
        display: table-cell;
        padding: 3px 10px;
    }

    .divtableCell h1{
        color: #003049;
    }

    .divTableHeading {
        background-color: #EEE;
        display: table-header-group;
        font-weight: bold;
    }

    .divTableFoot {
        background-color: #EEE;
        display: table-footer-group;
        font-weight: bold;
    }

    .divTableBody {
        display: table-row-group;
    }
</style>


<div class="divTable" style="width: 844px; border: 3px solid #000;">
    <div class="divTableBody">
        <div class="divTableRow">
            <div class="divTableCell">
                <h1>Frequently Accessed Links</h1>
                <ul>
                    <li>Email</li>
                    <li>Gerogia View</li>
                    <li>MyDaltonState</li>
                </ul>
                <br />
                <h1>Auxilary Services</h1>
                <ul>
                    <li>Bookstore</li>
                    <li>Roadrunner Cafe</li>
                    <li>Roadrunner Card</li>
                </ul>
            </div>
            <div class="divTableCell">
                <h1>Registrar</h1>
                <ul>
                    <li>Calendar</li>
                    <li>Catalog</li>
                    <li>Class Schedule</li>
                    <li>DegreeWorks</li>
                    <li>Exam Schedule</li>
                    <li>Graduation</li>
                    <li>Projected Schedule</li>
                    <li>Transcripts</li>
                </ul>
            </div>
            <div class="divTableCell">
                <h1>Student Support</h1>
                <ul>
                    <li>Career & Professional Development</li>
                    <li>Counseling</li>
                    <li>Disability Access</li>
                    <li>Math Lab</li>
                    <li>Public Safety</li>
                    <li>Report a Concern</li>
                    <li>Student Conduct</li>
                    <li>Student Support</li>
                    <li>Technical Support</li>
                </ul>
            </div>
        </div>
    </div>
</div>
