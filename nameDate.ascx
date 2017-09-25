<%@ Control Language="C#" AutoEventWireup="true" CodeFile="nameDate.ascx.cs" Inherits="nameDate" %>
<style type="text/css">


    </style>
        <table style="width: 335px;">
            <tr>
                <td>
                    <asp:label id="Label1" runat="server" text="Name:"></asp:label>
                </td>
                <td>
                    <asp:textbox id="nameTextBox" runat="server"></asp:textbox>
                    <asp:requiredfieldvalidator
                        id="nameRequiredFieldValidator"
                        controltovalidate="nameTextBox"
                        runat="server"
                        errormessage="Please enter your name"
                        forecolor="Red"
                        text="*"></asp:requiredfieldvalidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:label id="Label2" runat="server" text="Birth Date:"></asp:label>
                </td>
                <td class="auto-style4">
                    <asp:textbox id="birthTextBox" runat="server"></asp:textbox>
                    <asp:requiredfieldvalidator
                        id="birthRequiredFieldValidator"
                        controltovalidate="birthTextBox"
                        runat="server"
                        errormessage="Please enter your birth date"
                        forecolor="Red"
                        text="*">
                    </asp:requiredfieldvalidator>
                    <asp:comparevalidator
                        id="CompareValidator1"
                        runat="server"
                        errormessage="Please enter correct date"
                        controltovalidate="birthTextBox"
                        forecolor="Red"
                        operator="DataTypeCheck"
                        text="*"
                        type="Date"></asp:comparevalidator>
                </td>
            </tr>
        </table>
    
