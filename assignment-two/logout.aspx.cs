using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment_two
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //kill session
            Session["UserID"] = null;
            Session.Abandon();

            //redirect default
            Response.Redirect("default.aspx");
        }
    }
}