using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Trace.Warn("2310", "Begining of Page_Load");
        Trace.Warn("2310", "IsPostBack=" + Page.IsPostBack);
        if (!Page.IsPostBack)
        {
            Benefits benefitsList = new Benefits();
            foreach (Benefits.BenefitInfo benefit in benefitsList.GetBenefitsList())
            {
                listBenefitsCheckBoxList.Items.Add("<a href = " + benefit.benefitPage + ">" + benefit.benefitName + "</a>");
            }
        }
    }


    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        foreach (ListItem li in listBenefitsCheckBoxList.Items)
        {
            if (li.Selected)
            {
                selectionsLabel.Text += li.Value + "&nbsp;&nbsp;&nbsp;&nbsp;";
            }
        }
    }
}