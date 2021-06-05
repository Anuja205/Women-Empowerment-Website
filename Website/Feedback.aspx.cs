using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls; 
using System.Net.Mail;
public partial class Feedback : System.Web.UI.Page
{
    bool l = true;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Equals("") || TextBox2.Text.Equals("") || TextBox4.Text.Equals(""))
        {
            Label1.Text = "Fields marked with * are mandatory";

        }
        else
        {
            try
            {
                MailMessage m = new MailMessage("empower20182019@gmail.com", "empower20182019@gmail.com");
                m.Subject = "Feedback";
                m.Body = "Feedback of " + TextBox2.Text + "\n" + TextBox4.Text;
                SmtpClient s = new SmtpClient("smtp.gmail.com", 587);
                s.Credentials = new System.Net.NetworkCredential()
                {
                    UserName = "empower20182019@gmail.com",
                    Password = "anujaadi20"
                };
                s.EnableSsl = true;
                s.Send(m);
                Response.Write("<script>alert('Email sent successfully');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script>alert('Email failed to send'); </script>");
            }

        }
    }
}