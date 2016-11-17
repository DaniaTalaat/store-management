using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class item : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }








    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("order.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.DataSourceID = "SqlDataSource2";
        GridView1.DataBind();
    }
}








