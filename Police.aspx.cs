using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New
{
    public partial class Police : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void murdersBTn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Murders.aspx");
        }

        protected void theftsBTn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Thefts.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if(CheckBox1.Visible==true)
            {
                Response.Redirect("Murders.aspx");
            }
            if(CheckBox2.Visible==true)
            {
                Response.Redirect("Thefts.aspx");
            }
        }
    }
}