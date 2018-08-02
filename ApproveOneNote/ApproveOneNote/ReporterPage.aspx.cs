using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace ApproveOneNote
{
    public partial class ReporterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();
            if (Session["loginstart"] != "login")
            {
                Response.Redirect("LoginPage.aspx");
            }


        }

        protected void Logout_click_Report(object sender, EventArgs e)
        {
            Session.Clear();
         
            Response.Redirect("LoginPage.aspx");
        }
    }
}