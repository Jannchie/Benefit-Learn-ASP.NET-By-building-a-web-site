using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// DentalService 的摘要说明
/// </summary>
[WebService(Namespace = "http://microsoft.com/webservices/",Description ="This XML Web service contains information about the dentists.")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
// [System.Web.Script.Services.ScriptService]
public class DentalService : System.Web.Services.WebService
{
    SqlConnection dentistsConnection;
    DataSet dentistDataSet;
    SqlDataAdapter dentistDataAdapter;


    public DentalService()
    {

        //如果使用设计的组件，请取消注释以下行 
        //InitializeComponent(); 
    }

    [WebMethod(Description = "This XML Web service method returns all the dentists.")]
    public DataSet GetAllDentists()
    {
        string dentistString = "SELECT * FROM Dentists";
        dentistsConnection = new SqlConnection("Data Source=.\\SQLExpress;Initial Catalog=Dentists;Integrated Security=True");
        dentistDataAdapter = new SqlDataAdapter(dentistString, dentistsConnection);
        dentistDataSet = new DataSet();
        dentistDataAdapter.Fill(dentistDataSet);
        dentistsConnection.Close();
        return dentistDataSet;
    }

    [WebMethod(Description = "This XML Web service method returns the dentists from a supplied postal code.")]
    public DataSet GetDentistsByPostalCode(String postalCodeString)
    {
        SqlDataAdapter postCodeSqlDataAdapter;
        DataSet postCodeDataSet = new DataSet();
        SqlParameter workParam = null;

        //call the DentistsByState stored procedure
        dentistsConnection = new SqlConnection("Data Source=.\\SQLExpress;Initial Catalog=Dentists;Integrated Security=True");
        postCodeSqlDataAdapter = new
           SqlDataAdapter("DentistsByPostalCode", dentistsConnection);
        postCodeSqlDataAdapter.SelectCommand.CommandType =
           CommandType.StoredProcedure;

        //add the postal code input parameter
        workParam = new SqlParameter("@PostalCode",System.Data.SqlDbType.NVarChar);
        workParam.Direction = ParameterDirection.Input;
        workParam.Value = postalCodeString;
        postCodeSqlDataAdapter.SelectCommand.Parameters.Add(workParam);

        //run the stored procedure and fill a dataset
        postCodeSqlDataAdapter.Fill(postCodeDataSet, "DentistsPoCode");

        //close the connection
        dentistsConnection.Close();

        return postCodeDataSet;


    }
}
