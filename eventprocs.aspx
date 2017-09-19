<%@ Page Language="c#" %>

<html>
<body>
    <script language="c#" runat="Server"> 
        void ImageButton_Click(object sender, ImageClickEventArgs e)
        {
            Label1.Text = "You clicked the ImageButton control at Coordinates: ("
                        + e.X.ToString() + ", " + e.Y.ToString() + ")";
        }
    </script>
    <script language="javascript"> 
        function Image_onMouseOver() {
            window.event.srcElement.src = "frog.jpg";
        }
        function Image_onMouseOut() {
            window.event.srcElement.src = "question.jpg";
        }
    </script>
    <form runat="server">
        <input type="image" id="InputImage" src="question.jpg" onmouseover="Image_onMouseOver()" onmouseout="Image_onMouseOut()" onserverclick="ImageButton_Click" runat="server">
        <asp:Label ID="Label1" runat="server" />
    </form>
</body>
</html>
