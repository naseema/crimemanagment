using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CrimeManagement {
    public partial class Default : BaseDataPage {
        internal string query;
        internal SqlConnection con;

        protected void Page_Load(object sender, EventArgs e) {
            base.Page_Load(sender, e);

            DisplayDataFromUsers();
        }

        protected void Button1_Click(object sender, EventArgs e) {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into users ('admin','admin','admin')";
            cmd.CommandText = "insert into users values('" + username_tv.Text + "','" + password_tv.Text + "','" +
                              fullname_tv.Text + "')";
            cmd.ExecuteNonQuery();

            username_tv.Text = "";
            password_tv.Text = "";
            fullname_tv.Text = "";

            cmd.Dispose();

            DisplayDataFromUsers();

            ShowAllCrimes_Click(null, null);
        }

        internal void connection()
        {
            throw new NotImplementedException();
        }

        protected void Button2_Click(object sender, EventArgs e) {
            if (IsUserExist(username_tv.Text, password_tv.Text)) {
                results.Text = "Login Succeded!";
            }
            else {
                results.Text = "Login failed!";
            }

            DisplayDataFromUsers();
        }


        public void DisplayDataFromUsers() {
            DisplayDataFromTable(grid_users, "users");
        }

        public void DisplayDataFromTable(GridView gridView, string tabelName) {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from " + tabelName;
            cmd.ExecuteNonQuery();

            DataTable data = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(data);
            gridView.DataSource = data;
            gridView.DataBind();
            cmd.Dispose();
        }

        protected void ShowAllUsers_Click(object sender, EventArgs e) {
            DisplayDataFromTable(grid_users, "users");
        }

        protected void ShowAllCrimes_Click(object sender, EventArgs e) {
            DisplayDataFromTable(grid_crimes, "crimes");
        }

        protected void ShowAllCrimesReports_Click(object sender, EventArgs e) {
            DisplayDataFromTable(grid_crimes, "Witness");
        }

        protected void SearchCrime_Click(object sender, EventArgs e) {
            SqlCommand cmd = QueryData("crimes", "description LIKE '%" + SearchCrimeTB.Text + "%'");

            DataTable data = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(data);
            grid_crimes.DataSource = data;
            grid_crimes.DataBind();
            cmd.Dispose();
        }


        protected void GridCrimes_RowCommand(Object sender, GridViewCommandEventArgs e) {
            if (e.CommandName == "DeleteCrime") {
                results.Text = e.CommandName + e.CommandArgument;
                results.Text = e.CommandArgument + " Deleted";
                DeleteCrime(int.Parse(e.CommandArgument.ToString()));
            }
        }


        protected void GridCrimes_OnRowDeleting(object sender, GridViewDeleteEventArgs e) {
            e.Cancel = true;
            ((GridView)sender).DataBind();
        }
    }
}