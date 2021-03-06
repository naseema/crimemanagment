﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
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
            cmd.CommandText = "select * from users where username='" + username + "' and password='" + password + "'";
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

        protected void AddCrime(string type, string location, string date, string time, string description)
        {

            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "insert into crimes values('"
                + type + "','"
                + location + "','"
                + date + "','"
                + time + "','"
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

        protected Crime GetCrime(string id)
        {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "Select * from crimes WHERE id=" + id;
            SqlDataReader sqlr = null;

            try {
                sqlr = cmd.ExecuteReader();
                if (sqlr.Read()) {
                    Crime c = new Crime();
                    c.description = sqlr.GetString(5);
                    c.type = sqlr.GetString(1);
                    c.location = sqlr.GetString(2);
                    c.date = sqlr.GetDateTime(3);
                    c.time = sqlr.GetTimeSpan(4);
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
        
        protected void GetWitness(int id)
        {
            //TODO
        }

        protected void AddWitness(int crimeId, string description, string imageBytes)
        {
            
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "insert into Witness (CrimeID, Details, wimage) values("
                + crimeId + ",'"
                + description + "','"
                + imageBytes + "')";

            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }
        protected void DeleteWitness(int id)
        {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "DELETE from Witness WHERE id=" + id;

            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }

        protected string GetImage(string id)
        {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "SELECT wimage from Witness WHERE id=" + id;

            SqlDataReader sqlr = null;

            try
            {
                sqlr = cmd.ExecuteReader();
                if (sqlr.Read())
                {
                    return sqlr.GetString(0);
               
                }
                else
                {
                    return null;
                }
            }
            finally
            {
                sqlr?.Close();
                cmd.Dispose();
            }
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


        protected void AddSuspects(string crimeID ,string SuspectName, string SuspectAge, string SuspectID, string Residence, string SocialStatus , string Date)
        {

            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "insert into Suspects values('"
                + crimeID + "','"
                + SuspectName + "','"
                + SuspectAge + "','"
                + SuspectID + "','"
                + Residence + "','"
                + SocialStatus + "','" 
                + Date +"')";

            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }

        protected void DeleteSuspect(int id)
        {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "DELETE from Suspects WHERE id=" + id;

            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }


        /*protected DateTime ConvertTime() {
        */

        protected DateTime ConvertDate(string dateValue) {
            /* read date from ui and save it to DB*/
            // string dateValue = "2020-10-30";
            string pattern = "yyyy-MM-dd";
            DateTime parsedDate;
       
            if (DateTime.TryParseExact(dateValue, pattern, null,
                DateTimeStyles.None, out parsedDate))
                Console.WriteLine("Converted '{0}' to {1:d}.",
                    dateValue, parsedDate);
            else
                Console.WriteLine("Unable to convert '{0}' to a date and time.",
                    dateValue);

            return parsedDate;
        }
        
        

        protected void AddSuspectToCrime(string crimeId, string suspectId) {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "insert into CrimeSuspects values("
                              + crimeId + ","
                              + suspectId + ","
                              + 0 +")"; // 0 = not committed

            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }
        
        protected void DeleteSuspectFromCrime(string crimeId, string suspectId) {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "DELETE from CrimeSuspects  WHERE crimeId="+crimeId+ " AND SuspectsID=" + suspectId;

            cmd.ExecuteNonQuery();
            cmd.Dispose();
        } 
        
        protected void ChangeSuspectCommittedCrime(string crimeId, string suspectId, bool isCommited) {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "UPDATE  CrimeSuspects SET is_committed = " + (isCommited ? 1 : 0) 
                + " WHERE crimeId="+crimeId+ " AND SuspectsID=" + suspectId;

            cmd.ExecuteNonQuery();
            cmd.Dispose();
        }

        protected int IsCrimeExist(string PlaceBox, string DropDownType , string TimeBox , string DateBox )
        {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from crimes WHERE location = '" + PlaceBox + "' and type = '" +
                              DropDownType  + "' " +
                              "AND time like '" + TimeBox + "%' AND date='" + DateBox + "'";
            SqlDataReader sqlr = null;
            try
            {
                sqlr = cmd.ExecuteReader();
                if (sqlr.Read())
                {
                    return sqlr.GetInt32(0); //CrimeId

                }
                else
                {
                    return -1;
                }
            }
            finally
            {
                sqlr?.Close();
                cmd.Dispose();
            }
        }

    }
}
