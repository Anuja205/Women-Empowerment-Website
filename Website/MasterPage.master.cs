using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie c = Request.Cookies["web"];
        if (c != null)
        {
            Login.InnerText = "LOGOUT";
            anuja.InnerText = "CHANGE PASSWORD";
            anuja.HRef = "http://localhost:30480/WebSite1/Changepassword.aspx";
            Login.HRef = "http://localhost:30480/WebSite1/Logout.aspx";
        }

        else 
        {
            Login.InnerText = "LOGIN";
            anuja.InnerText = "REGISTRATION";
            anuja.HRef = "http://localhost:30480/WebSite1/Register.aspx";
            Login.HRef = "http://localhost:30480/WebSite1/Login.aspx";
        }
    }
}
