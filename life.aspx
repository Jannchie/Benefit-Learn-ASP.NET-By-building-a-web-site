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
    <p>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Life insurance Application"></asp:Label>
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
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="nameRequiredFieldValidator"
                        ControlToValidate="nameTextBox"
                        runat="server"
                        ErrorMessage="Please enter your name"
                        ForeColor="Red"
                        Text="*"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Proof of good health appointment"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Birth Date:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="birthTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="birthRequiredFieldValidator"
                        ControlToValidate="birthTextBox"
                        runat="server"
                        ErrorMessage="Please enter your birth date"
                        ForeColor="Red"
                        Text="*">
                    </asp:RequiredFieldValidator>
                    <asp:CompareValidator
                        ID="CompareValidator1"
                        runat="server"
                        ErrorMessage="Please enter correct date"
                        ControlToValidate="birthTextBox"
                        ForeColor="Red"
                        Operator="DataTypeCheck"
                        Text="*"
                        Type="Date"
                        ></asp:CompareValidator>
                </td>
                <td rowspan="5">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Coverage:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="coverageTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="coverageRequiredFieldValidator"
                        ControlToValidate="coverageTextBox"
                        runat="server"
                        ErrorMessage="Please enter your coverage"
                        ForeColor="Red"
                        Text="*">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator 
                        ID="RegularExpressionValidator1"
                        ControlToValidate="coverageTextBox"
                        ForeColor="Red"
                        runat="server" 
                        ErrorMessage="RegularExpressionValidator"
                        ValidationExpression=\d+(\.\d{2})?
                        Text="*">
                        ></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:CheckBox ID="shortTermCheckBox" runat="server" Text="Short-term  disability" />
                </td>
                <td class="auto-style4">
                    <asp:CheckBox ID="longTermCheckBox" runat="server" Text="Long-term  disability" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="saveButton" runat="server" Text="Save" />
                </td>
                <td class="auto-style4">
                    <asp:ValidationSummary ID="ValidationSummary1" HeaderText="These errors were found!" runat="server" ForeColor="Red" Width="296px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
