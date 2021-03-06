﻿<%@ Page ValidateRequest="False" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" UICulture="aa-DJ" %>

<%@ Register Src="header.ascx" TagName="header" TagPrefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:header ID="header1" runat="server" />
            <asp:CheckBoxList ID="listBenefitsCheckBoxList" runat="server">
            </asp:CheckBoxList>
        </div>
        <p>
            <asp:Button ID="submitButton" runat="server" Height="21px" OnClick="SubmitButton_Click" Text="Submit" EnableTheming="True" />
        </p>


        <asp:Label ID="selectionsLabel" runat="server" Text="Selected items:"></asp:Label>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Life Insurance"></asp:Label>

            <br />
            <asp:TextBox ID="lifeTextBox" runat="server" Width="300px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Doctor"></asp:Label>
            <br />
            <asp:TextBox ID="doctorTextBox" runat="server" Width="300px"></asp:TextBox>
        </p>
    </form>
</body>
</html>
