using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Wa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie c = Request.Cookies["web"];
        if (c == null)
        {
            Response.Redirect("http://localhost:30480/WebSite1/Login.aspx");
        }

    }
}