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

public partial class retirement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            Application.Lock();
            Application["Visits"] =(int)Application["Visits"] + 1;
            Application.UnLock();

            DataSet retirementDataSet = new DataSet();
            retirementDataSet.ReadXml(Server.MapPath("") +"/mutual_funds.xml");
            retirementGridView.DataSource = retirementDataSet;
            retirementGridView.DataBind();
        }

        visitsLabel.Text = "This page has been visited " 
            + Application["Visits"].ToString() 
            + " times";
    } 
}
