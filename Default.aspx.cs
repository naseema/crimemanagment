using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LoginWithMSSql
{

    public partial class Default : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\WebDB.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }

            con.Open();

            DisplayData();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
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
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from users where username='"+username_tv.Text+ " and 'password='" + password_tv.Text + "'";
            SqlDataReader sqlr = cmd.ExecuteReader();
            if (sqlr.Read())
            {
                results.Text = "Login Succeded!";
            } else
            {
                results.Text = "Login failed!";
            }

            sqlr.Close();
            cmd.Dispose();

        }

        public void DisplayData()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from users";
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