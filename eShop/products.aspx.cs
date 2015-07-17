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
        bind_cart();
        if (!IsPostBack)
        {
            string cat = Request.QueryString["catname"].ToString();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

        LinkButton lb = (LinkButton)e.CommandSource;
        Response.Redirect("productdetails.aspx?proname=" + lb.Text);
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {

    }
    public void bind_cart()
    {
        Class1 ob = new Class1();
        ob.dt = (DataTable)Session["cart"];
        string str = "";

        if (ob.dt.Rows.Count == 0)
        {
            str = "_______________________________";

            ListBox1.Items.Add(str);
            str = "No Item Selected";
            ListBox1.Items.Add(str);
            str = "_______________________________";
            ListBox1.Items.Add(str);
        }
        else
        {
            str = "    " + "Product  " + "Quantity";
            ListBox1.Items.Add(str);
            str = "_______________________________";
            ListBox1.Items.Add(str);
            int index = 1;

            for (int j = 0; j <= ob.dt.Rows.Count - 1; j++)
            {
                DataRow dr = ob.dt.Rows[j];
                str = Convert.ToString(index) + ". " + Convert.ToString(dr["pname"]) + "  " + Convert.ToString(dr["qty"]);
                ListBox1.Items.Add(str);
                index++;

            }
            int total = Class2.gettotalprice();

            str = "_______________________________";
            ListBox1.Items.Add(str);
            str = "Total Amount=  " + total.ToString();

            ListBox1.Items.Add(str);
        }

    }

}
