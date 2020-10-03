using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CrimeManagement
{

    public partial class Default : BaseDataPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
            DisplayData();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into users ('admin','admin','admin')";
            cmd.CommandText = "insert into users values('" + username_tv.Text + "','" + password_tv.Text + "','" + fullname_tv.Text + "')";
            cmd.ExecuteNonQuery();

            username_tv.Text = "";
            password_tv.Text = "";
            fullname_tv.Text = "";

            cmd.Dispose();

            DisplayData();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (IsUserExist(username_tv.Text, password_tv.Text))
            {
                results.Text = "Login Succeded!";
            } else
            {
                results.Text = "Login failed!";
            }

            AddCrime("location", " description");

        }

        public void DisplayData()
        {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from crimes";
            cmd.ExecuteNonQuery();

            DataTable data = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(data);
            grid.DataSource = data;
            grid.DataBind();
            cmd.Dispose();

        }

    }
}