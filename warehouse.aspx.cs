using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class warehouse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int sum = 0;
        SqlConnection con = new SqlConnection(@"Data Source=DANIA\SQLEXPRESS;Initial Catalog=store management;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("SELECT Item_quantity FROM Item",con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            sum += (int)dt.Rows[i]["Item_Quantity"];
        }

        
        Label2.Text = sum.ToString();




    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataSourceID = "SqlDataSource2";
        GridView1.DataBind();
    }
}