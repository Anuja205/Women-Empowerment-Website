using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class AdminLogin : System.Web.UI.Page
{
    bool l = false;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=Admin;Integrated Security=True");
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from [Admin]";

        
        con.Open();
        SqlDataReader r = cmd.ExecuteReader();
        while (r.Read())
        {
            if (r[0].Equals(TextBox1.Text) && r[1].Equals(TextBox2.Text))
            {

                l = true;
                break;
            }

        }
        //con.Close();

        if (l == true)
        {
            HttpCookie c = new HttpCookie("Admin");
            Response.Cookies.Add(c);
            Response.Redirect("http://localhost:30480/WebSite1/AdminAccess.aspx");
        }

        if (l == false)
        {
            Response.Write("<script>alert('Wrong Credentials')</script>");
        }
    }
    
}