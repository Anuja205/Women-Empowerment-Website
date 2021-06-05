using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Blogs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie c = Request.Cookies["web"];
        if (c == null)
        {
            Response.Redirect("http://localhost:30480/WebSite1/Login.aspx");
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=blogs;Integrated Security=True");
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into [bl2](Email,Content) values('"+TextBox3.Text+"', '"+TextBox4.Text+"')";
        con.Open();
        int x = cmd.ExecuteNonQuery();
        con.Close();
        if(x==1)
        {
            Response.Redirect("http://localhost:30480/WebSite1/Blog2.aspx");
            

        }
        if (x!= 1)
        {
            Response.Write("<script>alert('Blog Not Posted Try Again');</script>");
 
        }

    }
}