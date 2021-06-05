using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class BI : System.Web.UI.Page
{
    StringBuilder s = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie c = Request.Cookies["web"];
        if (c == null)
        {
            Response.Redirect("http://localhost:30480/WebSite1/Login.aspx");
        }
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=anuja;Integrated Security=True");
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from [bui]";
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        con.Close(); 


    }
}