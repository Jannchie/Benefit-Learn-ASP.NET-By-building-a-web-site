<%@ Control Language="C#" AutoEventWireup="true" CodeFile="nameDate.ascx.cs" Inherits="nameDate" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
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
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td class="auto-style4">
                    <asp:textbox id="birthTextBox" runat="server"></asp:textbox>
                    <cc1:CalendarExtender ID="birthTextBox_CalendarExtender" runat="server" Format="yy/MM/dd" OnClientShown="dobCalendarShown" TargetControlID="birthTextBox">
                    </cc1:CalendarExtender>

                    <script type="text/javascript" language="javascript">
                        function dobCalendarShown(sender, args)
                        {
                            sender._switchMode("years", true);
                        }
                    </script>

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
    
