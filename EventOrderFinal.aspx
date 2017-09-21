<%@ Page Language="c#" %>

<html>
<head>
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
</head>
<body style="font-family: Arial, Helvetica, sans-serif; font-size: x-small">
    <script language="c#" runat="Server"> 
	void Page_Load(object s, EventArgs e)
	{
		if (!Page.IsPostBack)
		{
			Label1.Text = Label1.Text + "<P>page_load first time, ";
		}
		else
		{
			Label1.Text = Label1.Text + "<P>page_load postback, ";
		}
	}
	void Page_Unload(object s, EventArgs e)
	{ 
		Label1.Text = Label1.Text + "Page_Unload, ";
	}
	void buttonServerClick(object s, EventArgs e)
	{
		Label1.Text = Label1.Text + "server button click, ";
	}
	void textServerChange(object s, EventArgs e)
	{
		Label1.Text = Label1.Text + "server text change, ";
	}
	void checkServerClick(object s, EventArgs e)
	{
		Label1.Text = Label1.Text + "server checkbox click, ";
	}
	void checkServerChange(object s, EventArgs e)
	{
		Label1.Text = Label1.Text + "server checkbox change, ";
	}
	void listServerClick(object s, EventArgs e)
	{
		Label1.Text = Label1.Text + "server listbox click, ";
	}
	void listServerChange(object s, EventArgs e)
	{
		Label1.Text = Label1.Text + "server listbox change, ";
	}
    </script>
    <script language="javascript"> 
	function buttonClick() 
	{
		span1.innerHTML = span1.innerHTML + "button clicked, ";
	} 
	function textChange() 
	{
		span1.innerHTML = span1.innerHTML + "textbox changed, ";
	} 
	function checkClick() 
	{
		span1.innerHTML = span1.innerHTML + "checkbox clicked, ";
	} 
	function listChange() 
	{
		span1.innerHTML = span1.innerHTML + "listbox changed, ";
	} 
    </script>
    <form runat="server">
        Name:
        <input type="text" onchange="textChange();" onserverchange="textServerChange" id="txtName" runat="server">
        <p>
            Profession:
				<select id="lstTitle" onchange="listChange();" onserverchange="listServerChange" onserverclick="listServerClick" runat="server">
                    <option selected>Software Engineer</option>
                    <option>Software Tester</option>
                    <option>Program Manager</option>
                </select>
        </p>
        <p>
            <asp:CheckBox AutoPostBack="true" onclick="checkClick();"
                onserverclick="checkserverclick" OnCheckedChanged="checkServerChange"
                runat="server" ID="Checkbox1" Text="Certified Professional" />
        </p>
        <p>
            <input type="submit" value="Save" onserverclick="buttonServerClick" onclick="buttonClick()" runat="server" id="Submit1" name="Submit1">
        </p>
        <p>
            Client-Side events: <span id="span1" runat="server" />
        </p>
        <p>
            Server-Side events:
				<asp:Label ID="Label1" runat="server" />
        </p>
    </form>
</body>
</html>
