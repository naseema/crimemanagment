using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CrimeManagement
{
    public partial class BaseDataPage : System.Web.UI.Page

    {
        public static string currentUser;


       protected SqlConnection sqlConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\WebDB.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (sqlConnection.State == ConnectionState.Open)
            {
                sqlConnection.Close();
            }

            sqlConnection.Open();
        }

        protected void AddCrime(string location, string description)
        {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into crimes values('" + location + "','" + description + "','" + description + "')";
            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }

    }
}