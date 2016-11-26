<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ClassSchedule.ascx.cs" Inherits="Controls_ClassSchedule" %>

<!-- Term Select label -->
<asp:Label ID="TermLabel" runat="server" Text=""></asp:Label>
    <div>
        <h1>Term:
        <asp:DropDownList ID="TermList" runat="server" DataSourceID="SqlDataSource1" DataTextField="Term" DataValueField="TermID" AutoPostBack="True">
        </asp:DropDownList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ES299121ConnectionString %>" SelectCommand="SELECT * FROM [WebTerm] ORDER BY [TermID]"></asp:SqlDataSource>

        </h1>
        <asp:Button ID="SubmitTermButton" runat="server" Text="Submit Term" OnClick="SubmitTermButton_Click1" />
    </div>
</asp:Label>


<!-- Part-of-Term Select label -->
<asp:Label ID="PartTermLabel" runat="server" Text="" Visible="false">
    <div>
        <h1>Part of Term:
        <asp:DropDownList ID="PartTermList" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource2" DataTextField="PartTermName" DataValueField="PartTermID" >
            <asp:ListItem Value="" Selected="True">All parts of term.</asp:ListItem>
        </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ES299121ConnectionString %>" SelectCommand="SELECT [PartTermID], [PartTermName] FROM [PartofTerm] ORDER BY [PartTermID]"></asp:SqlDataSource>
        </h1>
        <asp:Button ID="SubmitPartTermButton" runat="server" Text="Submit Part of Term" OnClick="SubmitPartTermButton_Click" />
    </div>
</asp:Label>

<!-- Post Part-of-Term label -->
<asp:Label ID="PostLabel" runat="server" Text="Label" Visible="false">
    <div>
        <h1>Subject Code:
            <asp:DropDownList ID="SubjCodeList" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource3" DataTextField="SubjectName" DataValueField="SubjectID">
                <asp:ListItem Value="" Selected="True">Any Subjects</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ES299121ConnectionString %>" SelectCommand="SELECT [SubjectID], [SubjectName] FROM [SubjectCode] ORDER BY [SubjectID]"></asp:SqlDataSource>
        </h1>

        <h1>Campus Code:
            <asp:DropDownList ID="CampusList" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource4" DataTextField="CampusName" DataValueField="CampusID">
                <asp:ListItem Value="" Selected="True">Any Campus</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ES299121ConnectionString %>" SelectCommand="SELECT [CampusID], [CampusName] FROM [Campus] ORDER BY [CampusID]"></asp:SqlDataSource>
        </h1>

        <h1>Course Number:
            <asp:DropDownList ID="CrseNumList" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource5" DataTextField="CourseNumber" DataValueField="CourseID">
                <asp:ListItem Value="" Selected="True">Any Course</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ES299121ConnectionString %>" SelectCommand="SELECT [CourseID], [CourseNumber] FROM [Course] ORDER BY [CourseID]"></asp:SqlDataSource>
        </h1>

        <h1>Begin Time:
            <asp:DropDownList ID="BeginTimeList" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource6" DataTextField="TimeStart" DataValueField="TimeSlotID">
                <asp:ListItem Value="" Selected="True">Any Start Time</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ES299121ConnectionString %>" SelectCommand="SELECT [TimeSlotID], [TimeStart], [TimeEnd] FROM [Times] ORDER BY [TimeStart]"></asp:SqlDataSource>
        </h1>

        <h1>End Time:
            <asp:DropDownList ID="EndTimeList" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource6" DataTextField="TimeEnd" DataValueField="TimeSlotID">
                <asp:ListItem Value="" Selected="True">Any End Time</asp:ListItem>
            </asp:DropDownList></h1>

        <h1>Instructor:
            <asp:DropDownList ID="InstructorList" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource7" DataTextField="InstructorFull" DataValueField="InstructorID">
                <asp:ListItem Value="" Selected="True">Any Instructor</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ES299121ConnectionString %>" SelectCommand="SELECT * FROM [WebInstructor] ORDER BY [InstructorLast]"></asp:SqlDataSource>
        </h1>

        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource12" DataTextField="DayNames" DataValueField="DayNameID">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ES299121ConnectionString %>" SelectCommand="SELECT [DayNameID], [DayNames] FROM [DayNames] ORDER BY [DayNameID]"></asp:SqlDataSource>
    </div>
</asp:Label>


<div>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataGridViewSource" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="CRN" HeaderText="CRN" SortExpression="CRN" />
            <asp:BoundField DataField="SubjectName" HeaderText="SubjectName" SortExpression="SubjectName" />
            <asp:BoundField DataField="CourseNumber" HeaderText="CourseNumber" SortExpression="CourseNumber" />
            <asp:BoundField DataField="SectionDesc" HeaderText="SectionDesc" SortExpression="SectionDesc" />
            <asp:BoundField DataField="CourseTitle" HeaderText="CourseTitle" SortExpression="CourseTitle" />
            <asp:BoundField DataField="CampusID" HeaderText="CampusID" SortExpression="CampusID" />
            <asp:BoundField DataField="DayCode" HeaderText="DayCode" SortExpression="DayCode" />
            <asp:BoundField DataField="TermStart" HeaderText="TermStart" SortExpression="TermStart" />
            <asp:BoundField DataField="TermEnd" HeaderText="TermEnd" SortExpression="TermEnd" />
            <asp:BoundField DataField="TimeStart" HeaderText="TimeStart" SortExpression="TimeStart" />
            <asp:BoundField DataField="TimeEnd" HeaderText="TimeEnd" SortExpression="TimeEnd" />
            <asp:BoundField DataField="BuildingName" HeaderText="BuildingName" SortExpression="BuildingName" />
            <asp:BoundField DataField="RoomNumber" HeaderText="RoomNumber" SortExpression="RoomNumber" />
            <asp:BoundField DataField="Credits" HeaderText="Credits" SortExpression="Credits" />
            <asp:BoundField DataField="Instructor_Name" HeaderText="Instructor_Name" ReadOnly="True" SortExpression="Instructor_Name" />
            <asp:BoundField DataField="Seats" HeaderText="Seats" SortExpression="Seats" />
            <asp:BoundField DataField="WaitCapacity" HeaderText="WaitCapacity" SortExpression="WaitCapacity" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataGridViewSource" runat="server" ConnectionString="<%$ ConnectionStrings:ES299121ConnectionString %>" SelectCommand="DSCProjectSP" SelectCommandType="StoredProcedure" CancelSelectOnNullParameter="False">
        <SelectParameters>
            <asp:ControlParameter ControlID="TermList" DefaultValue="" Name="TermID" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="PartTermList" DefaultValue="" Name="PartTermID" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="SubjCodeList" DefaultValue="" Name="SubjectID" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="CampusList" DefaultValue="" Name="CampusCode" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="CrseNumList" DefaultValue="" Name="CourseNo" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="BeginTimeList" DefaultValue="" Name="BeginTime" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="EndTimeList" DefaultValue="" Name="EndTime" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="InstructorList" DefaultValue="" Name="InstructorID" PropertyName="SelectedValue" Type="Int32" />
            <asp:Parameter DefaultValue="" Name="DayID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>

