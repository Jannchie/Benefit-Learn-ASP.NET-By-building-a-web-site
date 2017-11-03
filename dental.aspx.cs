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

public partial class dental : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GetAllDentistsButton_Click(object sender, EventArgs e)
    {
        //TODO Lab 13: call the XML Web service method
        DentalService getAllDentistsProxy = new DentalService();
        DataSet allDentistsDataSet = new DataSet();
        allDentistsDataSet = getAllDentistsProxy.GetAllDentists();
        dentistsGridView.DataSource = allDentistsDataSet;
        dentistsGridView.DataBind();
    }
    protected void submitButton_Click(object sender, EventArgs e)
    {
        //TODO Lab 13: call the XML Web service method
        DentalService getDentistsByPostCodeProxy = new DentalService();
        DataSet dentistsByPostCodeDataSet = new DataSet();
        dentistsByPostCodeDataSet = getDentistsByPostCodeProxy.GetDentistsByPostalCode(postalCodeTextBox.Text);
        dentistsGridView.DataSource = dentistsByPostCodeDataSet;
        dentistsGridView.DataBind();
    }
}
