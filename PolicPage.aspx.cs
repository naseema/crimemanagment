using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CrimeManagement;

namespace CrimeManagement
{
    public partial class PolicPage : BaseDataPage
    {
        protected void murBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Murders.aspx");
        }

        protected void theBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Thefts.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
                
            
        }
    }
}