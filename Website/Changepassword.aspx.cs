using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie c = Request.Cookies["web"];
        if (c==null)
        {
            Response.Redirect("http://localhost:30480/WebSite1/Login.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool l = false;
        SqlConnection s = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=anuja;Integrated Security=True");
        SqlCommand cmd = s.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from [User]";


        s.Open();
        SqlDataReader sq = cmd.ExecuteReader();
        while (sq.Read())
        {
            if (sq[1].Equals(TextBox1.Text) && sq[3].Equals(ClassLibrary4.Class1.Encrypt (TextBox2.Text)))
            {
                l = true;
                break;
            }
        }
        sq.Close();
        if (l)
        {
            SqlCommand cmd2 = s.CreateCommand();
            cmd2.Parameters.AddWithValue("@anu",ClassLibrary4.Class1.Encrypt( TextBox3.Text));
            cmd2.Parameters.AddWithValue("@anuja", TextBox1.Text);
            cmd2.CommandText = "update [User] set PASSWORD = @anu  where [email id]=@anuja ";
            cmd2.ExecuteNonQuery();
            s.Close();

            Response.Write("<script>alert('Password Changed Successfully')</script>");

        }

        if (l == false)
        {
            Response.Write("<script>alert('Enter Correct Password.')</script>");
            s.Close();
        }
    }


   
}