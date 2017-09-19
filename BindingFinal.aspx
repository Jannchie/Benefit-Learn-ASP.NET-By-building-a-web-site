<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BindingFinal.aspx.cs" Inherits="_BindingFinal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Binding</title>
    <style type="text/css">
        #Form1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
        }
    </style>
</head>
<body style="font-size: small">
    <form id="Form1" runat="server">
        Profession:
		<asp:DropDownList ID="titleList" AutoPostBack="True" runat="server"
            Style="font-size: small" OnSelectedIndexChanged="titleList_SelectedIndexChanged">
            <asp:ListItem>Program Manager</asp:ListItem>
            <asp:ListItem>Tester</asp:ListItem>
            <asp:ListItem>User Assistance</asp:ListItem>
        </asp:DropDownList>
        <p>
            <asp:Label ID="listValueLabel" Text="<%# titleList.SelectedItem.Text %>"
                runat="server" Style="font-size: small" />
        </p>
    </form>
</body>
</html>
