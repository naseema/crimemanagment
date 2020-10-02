using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LoginWithMSSql
{
    public partial class BaseDataPage : System.Web.UI.Page

    {
       protected SqlConnection sqlConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\WebDB.mdf;Integrated Security=True");

        protected void OnPageLoad()
        {
            if (sqlConnection.State == ConnectionState.Open)
            {
                sqlConnection.Close();
            }

            sqlConnection.Open();
        }
    }
}