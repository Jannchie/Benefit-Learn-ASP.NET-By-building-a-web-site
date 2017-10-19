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
using System.Data.SqlClient;



public partial class doctors : System.Web.UI.Page
{
    SqlConnection doctorsConnection;
    DataSet doctorsDataSet;
    SqlDataAdapter doctorsSqlDataAdapter;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            //TODO Lab8: Bind the GridView to the doctors table.
            doctorsGridView.DataBind();

            //TODO Lab8: Bind the list to city field in the doctors table.
            //CreateDataSet();
            //SqlCommand citiesSqlCommand = new SqlCommand("SELECT DISTINCT city FROM doctors", doctorsConnection);
            //SqlDataReader citiesSqlDataReader;

            //doctorsConnection.Open();
            doctorsGridView.DataSource = SqlDataSource1;
            doctorsGridView.DataBind();


            //citiesSqlDataReader = citiesSqlCommand.ExecuteReader();
            //citiesList.DataSource = citiesSqlDataReader;
            //citiesList.DataTextField = "city";
            //citiesList.DataBind();
            //citiesSqlDataReader.Close();
            //doctorsConnection.Close();

            //TODO Lab9: Bind the listbox to the getUniqueCities stored procedure.
            CreateDataSet();
            SqlCommand citiesSqlCommand = new SqlCommand("getUniqueCities",doctorsConnection);
            citiesSqlCommand.CommandType = CommandType.StoredProcedure;
            SqlDataReader citiesSqlDataReader;

            doctorsConnection.Open();
            citiesSqlDataReader = citiesSqlCommand.ExecuteReader();
            citiesList.DataSource = citiesSqlDataReader;
            citiesList.DataTextField = "City";
            citiesList.DataBind();
            citiesSqlDataReader.Close();
            doctorsConnection.Close();


            //TODO Lab8: Add the "All" item to the list and select it.
            citiesList.Items.Insert(0,"[All]");
            citiesList.SelectedIndex = citiesList.Items.IndexOf(citiesList.Items.FindByText("[All]"));
            
            // Hide the specialties ListBox.
            specialtiesListBox.Visible = false;
            specialtiesLabel.Visible = false;

        }
    }

    void CreateDataSet()
    {
        doctorsConnection = new SqlConnection(SqlDataSource1.ConnectionString);
        SqlCommand sc = new SqlCommand(SqlDataSource1.SelectCommand, doctorsConnection);
        doctorsSqlDataAdapter = new SqlDataAdapter(sc);
        doctorsDataSet = new DataSet();
        doctorsSqlDataAdapter.Fill(doctorsDataSet);
    }

    private void Reset()
    {
		// Reset page index to 0.
		doctorsGridView.PageIndex = 0;

		// Remove the selection from the datagrid.
		doctorsGridView.SelectedIndex = -1;

		// Hide the specialties listbox.
        specialtiesListBox.Visible = false;
        specialtiesLabel.Visible = false;
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

 

    protected void submitButton_Click(object sender, EventArgs e)
    {
        if (doctorsGridView.SelectedIndex == -1) return;
        String doctorsName = doctorsGridView.SelectedRow.Cells[2].Text.Trim() + " " + doctorsGridView.SelectedRow.Cells[3].Text.Trim();
        Response.Redirect("medical.aspx?pcp=" + doctorsName);
    }

    protected void citiesList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Reset();
        refresh();
    }

    protected void doctorsGridView_PageIndexChanged(object sender, EventArgs e)
    {
        refresh();
    }

    private void refresh()
    {
        CreateDataSet();
        String cityName = citiesList.Text;
        if (cityName == "[All]")
        {
            doctorsGridView.DataSource = SqlDataSource1;
            doctorsGridView.DataBind();
            return;
        }
        DataView doctorsDataView = new DataView(doctorsDataSet.Tables[0]);
        doctorsDataView.RowFilter = "city = '" + cityName + "'";
        doctorsGridView.DataSource = doctorsDataView;
        doctorsGridView.DataBind();
    }

    protected void doctorsGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        doctorsGridView.PageIndex = e.NewPageIndex;
    }



    protected void specialtiesListBox_SelectedIndexChanged(object sender, EventArgs e)
    {
        CreateDataSet();
        string drID = doctorsGridView.SelectedRow.Cells[0].Text.Trim();
        SqlCommand specialtiesSqlCommand = new SqlCommand("getDrSpecialty",doctorsConnection);
        specialtiesSqlCommand.CommandType = CommandType.StoredProcedure;
        SqlParameter specialtiesParameter = new SqlParameter(@drID, SqlDbType.Char,4);
        specialtiesParameter.Direction = ParameterDirection.Input;
        specialtiesParameter.Value = drID;
        specialtiesSqlCommand.Parameters.Add(specialtiesParameter);
        SqlDataReader specialtiesSqlDataReader;
        doctorsConnection.Open();
        specialtiesSqlDataReader = specialtiesSqlCommand.ExecuteReader();
        specialtiesListBox.DataSource = specialtiesSqlDataReader;
        specialtiesListBox.DataTextField = "Specialty";
        specialtiesListBox.DataBind();
        if (specialtiesSqlDataReader.IsClosed == false)
        {
            specialtiesListBox.Visible = specialtiesSqlDataReader.HasRows;
            specialtiesLabel.Visible = specialtiesSqlDataReader.HasRows;
        }

    }
}

