﻿using System;
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


        protected void btnLogin_Click(object sender, EventArgs e)
        {
        
        //    cmd.CommandText = "select * from users where username='" + TxtUserName.Text + "','" + TxtPassword.Text + "')";
            if (IsUserExist(TxtUserName.Text, TxtPassword.Text))
            {

                Response.Redirect("Police.aspx");

            }
            else
            {
                Response.Write( "Login failed!");
            }

        }
    }
}