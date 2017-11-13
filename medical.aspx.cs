using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class medical : System.Web.UI.Page
{
    private System.ComponentModel.BackgroundWorker backgroundWorker1;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack){
            String pcp = Request.QueryString["pcp"];
            if (pcp != null) {
                doctorTextBox.Text = pcp;
            }
        }
    }

    private void InitializeComponent()
    {
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();

    }

    protected void saveButton_Click(object sender, EventArgs e)
    {
        HttpCookie getCookie = Request.Cookies["Benefits"];
        string doctor = "";
        string life = "";
        if (getCookie != null)
        {
            doctor = getCookie.Values["doctor"];
            life = getCookie.Values["life"];
        }
        doctor = doctorTextBox.Text;
        HttpCookie newCookie = new HttpCookie("Benefits");
        newCookie.Expires = DateTime.Now.AddDays(30);
        newCookie.Values["doctor"] = doctor;
        newCookie.Values["life"] = life;
        Response.Cookies.Add(newCookie);
        Label2.Text = nameDate1.EmpName + " born on " + nameDate1.EmoDOB.ToLongDateString();
        Response.Redirect("default.aspx");
    }
}
