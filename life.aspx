<%@ Page Title="" Language="C#" MasterPageFile="~/benefitsMaster.master" AutoEventWireup="true" CodeFile="life.aspx.cs" Inherits="life" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
        <style type="text/css">
            .auto-style3 {
                width: 198px;
            }

            .auto-style4 {
                width: 304px;
            }
        </style>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <br/>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:label id="Label4" runat="server" text="Life insurance Application"></asp:label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:label id="Label1" runat="server" text="Name:"></asp:label>
                </td>
                <td class="auto-style4">
                    <asp:textbox id="nameTextBox" runat="server"></asp:textbox>
                    <asp:requiredfieldvalidator id="nameRequiredFieldValidator" controltovalidate="nameTextBox" runat="server" errormessage="Please enter your name"
                        forecolor="Red" text="*"></asp:requiredfieldvalidator>
                </td>
                <td>
                    <asp:label id="Label5" runat="server" text="Proof of good health appointment"></asp:label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:label id="Label2" runat="server" text="Birth Date:"></asp:label>
                </td>
                <td class="auto-style4">
                    <asp:textbox id="birthTextBox" runat="server"></asp:textbox>
                    <asp:requiredfieldvalidator id="birthRequiredFieldValidator" controltovalidate="birthTextBox" runat="server" errormessage="Please enter your birth date"
                        forecolor="Red" text="*">
                    </asp:requiredfieldvalidator>
                    <asp:comparevalidator id="CompareValidator1" runat="server" errormessage="Please enter correct date" controltovalidate="birthTextBox"
                        forecolor="Red" operator="DataTypeCheck" text="*" type="Date"></asp:comparevalidator>
                </td>
                <td rowspan="5">
                    <asp:calendar id="Calendar1" runat="server" backcolor="#FFFFCC" bordercolor="#FFCC66" borderwidth="1px" daynameformat="Shortest"
                        font-names="Verdana" font-size="8pt" forecolor="#663399" height="200px" showgridlines="True" width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:label id="Label3" runat="server" text="Coverage:"></asp:label>
                </td>
                <td class="auto-style4">
                    <asp:textbox id="coverageTextBox" runat="server"></asp:textbox>
                    <asp:requiredfieldvalidator id="coverageRequiredFieldValidator" controltovalidate="coverageTextBox" runat="server" errormessage="Please enter your coverage"
                        forecolor="Red" text="*">
                    </asp:requiredfieldvalidator>
                    <asp:regularexpressionvalidator id="RegularExpressionValidator1" controltovalidate="coverageTextBox" forecolor="Red" runat="server"
                        errormessage="RegularExpressionValidator" validationexpression="\d+(\.\d{2})?" text="*"></asp:regularexpressionvalidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:checkbox id="shortTermCheckBox" runat="server" text="Short-term  disability" />
                </td>
                <td class="auto-style4">
                    <asp:checkbox id="longTermCheckBox" runat="server" text="Long-term  disability" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:button id="saveButton" runat="server" text="Save" onclick="saveButton_Click" />
                    <br />
                    <br />
                    <asp:label id="messageLabel" runat="server"></asp:label>
                </td>
                <td class="auto-style4">
                    <asp:validationsummary id="ValidationSummary1" headertext="These errors were found!" runat="server" forecolor="Red" width="296px"
                    />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </asp:Content>
