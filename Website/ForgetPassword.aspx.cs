using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;

public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool l = false;
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=anuja;Integrated Security=True");
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "select * from [User]";
        con.Open();
        SqlDataReader r = cmd.ExecuteReader();
        while (r.Read())
        {
            if (r[1].Equals(TextBox1.Text))
            {
                l = true;
                break;

            }
        }
        con.Close();
        if (l == true)
        {
            Random rx = new Random();
            int x = rx.Next(1000, 9999);
            con.Open();
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@c", ClassLibrary4.Class1.Encrypt(x.ToString()));
            cmd.CommandText = "UPDATE [User] set PASSWORD=@c where [EMAIL ID]=@a";
            cmd.ExecuteNonQuery();
            Mail(x);
            Label2.Text = "Your Password has been send to your email id";

        }
        else
        {
            Response.Write("<script>alert('enter correct email id')</script>");
            

        }

    }

    private void Mail(int o)
    {

        MailMessage m = new MailMessage("empower20182019@gmail.com", TextBox1.Text);
        m.Subject = "RESET PASSWORD";
        m.Body = o.ToString();
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