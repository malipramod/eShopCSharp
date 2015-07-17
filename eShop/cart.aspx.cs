using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Class2.viewcart();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Class2.deleteitem(Convert.ToString(e.Keys[0]), Convert.ToString(e.Keys[1]));
        SqlDataSource1.DeleteCommand = "delete from cart where id='" + e.Keys[2] + "'";
        SqlDataSource1.Delete();
        GridView1.DataSourceID = SqlDataSource1.ID;
        GridView1.DataBind();

    }
}
