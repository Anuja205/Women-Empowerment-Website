using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Equals("anuja") && TextBox2.Text.Equals("anuja"))
        {
            Response.Redirect("http://localhost:30480/WebSite1/AdminLogin.aspx");
        }
        else
        {
            bool l = false;
            SqlConnection s = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=anuja;Integrated Security=True");
            SqlCommand cmd = s.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from [User]";


            s.Open();
            SqlDataReader r = cmd.ExecuteReader();
            while (r.Read())
            {
                if (r[1].Equals(TextBox1.Text) && r[3].Equals(ClassLibrary4.Class1.Encrypt (TextBox2.Text)))
                {

                    l = true;
                    break;
                }

            }
            s.Close();

            if (l == true)
            {
                HttpCookie c = new HttpCookie("web");
                Response.Cookies.Add(c);
                Response.Redirect("http://localhost:30480/WebSite1/Home.aspx");
            }
        }
    }
}