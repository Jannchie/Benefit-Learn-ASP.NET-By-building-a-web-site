﻿using System;
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

    }

    private void InitializeComponent()
    {
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();

    }
}
