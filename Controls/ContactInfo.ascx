<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactInfo.ascx.cs" Inherits="Controls_ContactInfo" %>

<style type="text/css">
    .auto-style1 {
        width: 196px;
    }
    .auto-style4 {
        width: 300px;
    }
    .auto-style5 {
        width: 195px;
    }
    .auto-style6 {
        width: 177px;
    }
    .auto-style7 {
        width: 178px;
    }
</style>

<p class="Introduction">
                    Would you like us to provide you more information?&nbsp;
                    <asp:Button ID="MoreInfo" runat="server" Text="Yes" OnClick="MoreInfo_Click" />
                </p>
                <p class="Introduction">
                    <asp:Label ID="InfoRequest" runat="server"></asp:Label>
                </p>
               <asp:Panel ID="ContactInfo" runat="server" CssClass="Introduction" Visible="False">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style8">
                                <asp:Label runat="server" Text="First Name "></asp:Label>
                                <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style8">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstName" CssClass="ErrorMessage" ErrorMessage="Enter your first name">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style9">
                                <asp:Label runat="server" Text="Last Name "></asp:Label>
                                <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastName" CssClass="ErrorMessage" ErrorMessage="Enter your last name">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style9">
                                <asp:Label runat="server" Text="Email "></asp:Label>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your email address">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a valid e-mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                               <asp:Label ID="Label1" runat="server" Text="Term "></asp:Label>
                                <asp:DropDownList ID="Term" runat="server" Style="margin-top: 0px">
                                    <asp:ListItem>Spring 2017</asp:ListItem>
                                    <asp:ListItem>Summer 2017</asp:ListItem>
                                    <asp:ListItem>Fall 2017</asp:ListItem>
                                </asp:DropDownList> 
                            </td>
                            <td class="auto-style8">&nbsp;</td>
                            <td class="auto-style9">
                                <asp:Label ID="Label2" runat="server" Text="Admission Type "></asp:Label>
                                <asp:DropDownList ID="AdmissionType" runat="server">
                                    <asp:ListItem>Freshman</asp:ListItem>
                                    <asp:ListItem>Transfer</asp:ListItem>
                                </asp:DropDownList>  
                            </td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style9">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Button ID="SubmitInfo" runat="server" Text="Submit Information" OnClick="SubmitInfo_Click" /> 
                            </td>
                            <td class="auto-style4">&nbsp;</td>
                            <td class="auto-style5" colspan="3">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" />
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel> 