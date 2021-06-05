using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class Importanceofhygiene : System.Web.UI.Page
{
    StringBuilder x = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie c = Request.Cookies["web"];
        if (c == null)
        {
            Response.Redirect("http://localhost:30480/WebSite1/Login.aspx");
        }

        else
        {

            if (DropDownList1.SelectedIndex == 0)
            {
                x.Append("<video controls style='height:350px; width:500px; margin-left:50px;'>");
                x.Append(" <source src='1.webm' type='video/webm' />");
                x.Append("</video>");
                x.Append("<video controls style='height:350px; width:500px; margin-left:50px;'>");
                x.Append(" <source src='4.webm' type='video/webm' />");
                x.Append("</video>");
                PlaceHolder1.Controls.Add(new Literal { Text = x.ToString() });

            }
            if (DropDownList1.SelectedIndex == 1)
            {
                x.Append("<video controls style='height:350px; width:500px; margin-left:50px;'>");
                x.Append(" <source src='2.webm' type='video/webm' />");
                x.Append("</video>");
                x.Append("<video controls style='height:350px; width:500px; margin-left:50px;'>");
                x.Append(" <source src='3.webm' type='video/webm' />");
                x.Append("</video>");
                PlaceHolder1.Controls.Add(new Literal { Text = x.ToString() });

            }
            if (DropDownList1.SelectedIndex == 2)
            {
                x.Append("<video controls style='height:350px; width:500px; margin-left:50px;'>");
                x.Append(" <source src='5.webm' type='video/webm' />");
                x.Append("</video>");
                x.Append("<video controls style='height:350px; width:500px; margin-left:50px;'>");
                x.Append(" <source src='12.webm' type='video/webm' />");
                x.Append("</video>");

                PlaceHolder1.Controls.Add(new Literal { Text = x.ToString() });
            }
        }
    }
}