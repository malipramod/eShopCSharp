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
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
        
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
        ImageButton im = (ImageButton)e.CommandSource;
        string s = im.AlternateText;
        SqlConnection con = new SqlConnection("data source=(local);integrated security=true;initial catalog=eshop;");
        SqlCommand com = new SqlCommand("select * from products where pid='" + s + "'", con);
        con.Open();
        

        if (con.State == ConnectionState.Open)
        {
            SqlDataReader dtr = com.ExecuteReader();
            while (dtr.Read())
            {
                Class2.addtocart(dtr["pid"].ToString(), dtr["pname"].ToString(), Convert.ToInt32(dtr["qty"]),Convert.ToInt32(dtr["price"]), dtr["image"].ToString());

            }

        }

        
        

    }
}
