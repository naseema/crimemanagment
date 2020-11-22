using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CrimeManagement;

namespace CrimeManagment
{
    public partial class Login : BaseDataPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (IsUserExist(TxtUserName.Text, TxtPassword.Text))
            {
                Session.Add("policeName", TxtUserName.Text);
                Session["test"] = "test";
                Response.Redirect("Police.aspx");
            }
            else
            {
                Response.Write( "Login failed!");
            }

            
        }
    }
}