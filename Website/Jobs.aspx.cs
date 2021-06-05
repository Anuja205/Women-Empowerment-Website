using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class Jobs : System.Web.UI.Page
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
                x.Append("<marquee>");
                x.Append("<a href='https://bit.ly/2ULGsRc' style='font-size:x-large;'> Barista / BrewMaster (Team Member at Cafe)</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href='https://bit.ly/2uLR0nT'style='font-size:x-large;'>KYC Executive</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href='https://bit.ly/2UsUqdF'style='font-size:x-large;'>Business Development / Sales Intern  </a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2Ur5RCU'style='font-size:x-large;'>Call Center BPO  </a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2UqkTsC'style='font-size:x-large;'>Data Entry Operator</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2WI7NEj'style='font-size:x-large;'>Airport Job </a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2UqmXkm'style='font-size:x-large;'>Photography and Videography</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2FVHZ2c'style='font-size:x-large;'>Home Based Work </a>");
                x.Append("<br/> <br/>");
                x.Append("<a href =' https://bit.ly/2IbUVlP' style='font-size:x-large;'>KFC Team Member</a>");
                x.Append("<br/> <br/>");
                x.Append("</marquee>");

                PlaceHolder1.Controls.Add(new Literal { Text = x.ToString() });

            }
            else if (DropDownList1.SelectedIndex == 1)
            {
                x.Append("<br/> <br/>");
                x.Append("<marquee>");
                x.Append("<a href='https://bit.ly/2TRof7J'style='font-size:x-large;'>Store Incharge</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href='https://bit.ly/2HHTGdV'style='font-size:x-large;'>Tele Sales Executive</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href='https://bit.ly/2FoIKk0'style='font-size:x-large;'>Sales Assistant - Emailing, Surfing, Calling</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2K36tuo'style='font-size:x-large;'>Receptionist Executive </a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2OIb0kA'style='font-size:x-large;'>Kotak Mahindra Bank </a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2uJoNyc'style='font-size:x-large;'> Collection job</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2Vi9GY0'style='font-size:x-large;'> Banking job </a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2VdfB0y'style='font-size:x-large;'> Field sales executive job</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2UfiOjF'style='font-size:x-large;'>Voice Process - Netflix </a>");
                x.Append("<br/> <br/>");
                x.Append("</marquee>");
                PlaceHolder1.Controls.Add(new Literal { Text = x.ToString() });
            }
            else if (DropDownList1.SelectedIndex == 2)
            {
                x.Append("<br/> <br/>");
                x.Append("<marquee>");
                x.Append("<a href='https://bit.ly/2TRSnAr' style='font-size:x-large;'>Graphic Designer</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href='https://bit.ly/2CpOtnG'style='font-size:x-large;'>Senior Sales Associate</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href='https://bit.ly/2FfiHuo'style='font-size:x-large;'>Customer Service Associate</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2Uwvsdq'style='font-size:x-large;'>Manager Digital Marketing</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2Ib36Pi'style='font-size:x-large;'>Air Ticketing and Passport checking Staff </a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2Vjw3wj'style='font-size:x-large;'>Content Editor </a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2K5vLba'style='font-size:x-large;'>International Voice Process </a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2YKi7NX'style='font-size:x-large;'>Internal Auditor  </a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2YKcFe2' style='font-size:x-large;'> Interior Designer & Draftsman</a>");
                x.Append("<br/> <br/>");
                x.Append("</marquee>");
                PlaceHolder1.Controls.Add(new Literal { Text = x.ToString() });
            }
            else if (DropDownList1.SelectedIndex == 3)
            {
                x.Append("<br/> <br/>");
                x.Append("<marquee>");
                x.Append("<a href='https://bit.ly/2JoKbCV'style='font-size:x-large;'>Wedding Planner</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href='https://bit.ly/2Fal1m4'style='font-size:x-large;'>Airport Ground Staff</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href='https://bit.ly/2CrujJY'style='font-size:x-large;'>Associate Talent Acquisition</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2TR8iKE'style='font-size:x-large;'> Medical Coder - Physiotherapy - B. P. T</a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2UdN1zI'style='font-size:x-large;'>Customer Service Executive for E-commerce Company </a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2OJWPvg'style='font-size:x-large;'>Online Promotion Work  </a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2uKEsxe'style='font-size:x-large;'> International Business Management </a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2UltaPm'style='font-size:x-large;'>Office Administration </a>");
                x.Append("<br/> <br/>");
                x.Append("<a href ='https://bit.ly/2FOg8Q7'style='font-size:x-large;'> Research Analyst </a>");
                x.Append("<br/> <br/>");
                x.Append("</marquee>");
                PlaceHolder1.Controls.Add(new Literal { Text = x.ToString() });
            }
        }
    }
}