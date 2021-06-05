using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using ClassLibrary4;
public partial class _4 : System.Web.UI.Page
{

    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = TextBox3.Text;
        SqlConnection s = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=anuja;Integrated Security=True");
        SqlCommand cmd = s.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@a",Class1.Encrypt(TextBox5.Text));

        cmd.CommandText = "INSERT INTO [User] values('" + TextBox1.Text + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "',@a)";
        s.Open();
        int x = cmd.ExecuteNonQuery();
        s.Close();
        if (x == 1)
        {
            Label1.Text = "Registration Successful";
            mail(email);
            Response.Write("<script>alert('You are been redirected to Login page')</script>");
            Response.Redirect("http://localhost:30480/WebSite1/Login.aspx");
        }
        if (x != 1)
        {
            Label1.Text = "Registration Unsuccessfull";
        }
    }
    protected void mail(string k)
    {
        MailMessage m = new MailMessage("empower20182019@gmail.com",k);
        m.Subject = "Welcome";
        m.Body = k.ToString()+"\n"+"Welcome"+" your password is : "+TextBox5.Text;
        SmtpClient s = new SmtpClient("smtp.gmail.com", 587);
        s.Credentials = new System.Net.NetworkCredential()
        {
            UserName = "empower20182019@gmail.com",
            Password = "anujaadi20"
        };
        s.EnableSsl = true;
        s.Send(m);
    }
}
