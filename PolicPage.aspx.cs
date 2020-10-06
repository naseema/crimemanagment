using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeManagement
{
    public partial class PolicPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void murBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Murders.aspx");
        }

        protected void theBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Thefts.aspx");
        }

    }
}