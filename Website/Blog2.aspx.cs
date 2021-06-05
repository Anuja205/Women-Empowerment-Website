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

public partial class Blog2 : System.Web.UI.Page
{
    StringBuilder s = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie c = Request.Cookies["web"];
        if (c == null)
        {
            Response.Redirect("http://localhost:30480/WebSite1/Login.aspx");
        }

        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=blogs;Integrated Security=True");
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from [bl2]";
        con.Open();
        SqlDataReader r = cmd.ExecuteReader();
        while (r.Read())
        {
            s.Append("<br/><br/>");
            s.Append("<div style='border-style:outset; border-radius:30px; padding-left:30px; padding-top:20px; padding-bottom:20px; font-family:Times New Roman; font-size:larger'>");

            s.Append("Email id:    " + r[1] + "<br><br/>");
            s.AppendLine("Ideas:   " + r[2] + "<br>");
            s.Append("</div>");
            s.Append("<br><br>");



              
        }
        PlaceHolder1.Controls.Add(new Literal { Text = s.ToString() });

    }
}