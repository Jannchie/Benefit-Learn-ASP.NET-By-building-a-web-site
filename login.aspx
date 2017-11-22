<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="loogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style2
        {
            font-size: x-large;
            font-family: Verdana;
            font-style: italic;
            font-weight: bold;
        }
    </style>

</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <span class="style2">Benefits Selection Site<br />
        </span><br class="style2" />
    
    </div>
    <br />
        <asp:Login ID="benefitsLogin" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" Height="171px" Width="240px">
            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        </asp:Login>

    <br />
    <p>
        If you are a new employee and you don&#39;t have an account, then register for one 
        now.
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="register.aspx">Register 
        New User</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
