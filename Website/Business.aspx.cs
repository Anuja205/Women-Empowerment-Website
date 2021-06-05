using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;

public partial class buissness : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie c = Request.Cookies["web"];
        if (c == null)
        {
            Response.Redirect("http://localhost:30480/WebSite1/Login.aspx");
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        int imagefilelength = FileUpload1.PostedFile.ContentLength;
        byte[] imgarray = new byte[imagefilelength];
        HttpPostedFile image = FileUpload1.PostedFile;
        image.InputStream.Read(imgarray, 0, imagefilelength);
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=anuja;Integrated Security=True");
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Parameters.AddWithValue("@f", imgarray);
        cmd.CommandText = "insert into [bui] values('"+TextBox1.Text+TextBox4.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox5.Text+"',@f,'"+DropDownList1.SelectedValue+"')";
        con.Open();
        int x=cmd.ExecuteNonQuery();
        con.Close();
        if (x == 1)
        {
            Response.Write("<script>alert('Data posted Successfully');</script>");
        }
        if (x != 1)
        {
            Response.Write("<script>alert('Failed');</script>");
        }
    }
}