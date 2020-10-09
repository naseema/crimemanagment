using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Web;

namespace CrimeManagement {
    public partial class BaseDataPage : System.Web.UI.Page {
        public static string currentUser;


        protected SqlConnection sqlConnection =
            new SqlConnection(
                @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\WebDB.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e) {
            if (sqlConnection.State == ConnectionState.Open) {
                sqlConnection.Close();
            }

            sqlConnection.Open();
        }

        protected bool IsUserExist(string username, string password) {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from users where username='" + username + " ' and password='" + password + "'";
            SqlDataReader sqlr = null;
            try {
                sqlr = cmd.ExecuteReader();
                if (sqlr.Read()) {
                    return true;
                }
                else {
                    return false;
                }
            }
            finally {
                sqlr?.Close();
                cmd.Dispose();
            }
        }

        protected void AddCrime(string location, string description) {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "insert into crimes values('"
                              + "type_null" + "','"
                              + location + "','"
                              + new DateTime() + "','"
                              + new DateTime() + "','"
                              + description + "')";

            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }

        protected bool IsCrimeExist(string location, string type) // TODO add time/date 
        {
            return false;
        }

        protected void DeleteCrime(int id) {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "DELETE FROM crimes WHERE id=" + id;

            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }

        protected Crime GetCrime(int id)
        {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "Select * from crimes WHERE id=" + id;
            SqlDataReader sqlr = null;

            try {
                sqlr = cmd.ExecuteReader();
                if (sqlr.Read()) {
                    Crime c = new Crime();
                    c.description = sqlr.GetString(0);
                    c.type = sqlr.GetString(0);
                    c.location = sqlr.GetString(0);
                    return c;
                }
                else {
                    return null;
                }
            }
            finally {
                sqlr?.Close();
                cmd.Dispose();
            }
        }
        
        protected void GetCrimeReports(int id)
        {
            //TODO
        }

        protected void AddCrimeReport(int crimeId, string location, string description) {
            //TODO
        }

        protected List<String> GetCrimeReports(String crimeId) {
            return null;
        }

        protected SqlCommand QueryData(String tabelName, string query) {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from " + tabelName + " WHERE " + query;
            cmd.ExecuteNonQuery();
            return cmd;
        }
    }
}