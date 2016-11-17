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

        



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("warehouse.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("branch.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("category.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("item.aspx");
    }
}