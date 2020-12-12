using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CrimeManagement {
    public partial class Police : BaseDataPage {
        protected void Page_Load(object sender, EventArgs e) {

            base.Page_Load(sender, e);
            if (!IsPostBack) // To avoid refreshing the page when clicking a button
            {
                if (!Page.IsPostBack)
                {
                    Button4_Click(null, null); // Load crimes
                    LoadCrimeByCity();
                }

                SetCurrentDateTime();
                if (Session["policeName"] != null)
                {
                    PoliceName.Text = Session["policeName"].ToString();
                }
                else
                {
                    // Prevent opening police page if user isn't logged in
                    Response.Redirect("~/Login.aspx");
                }
            }
        }
        
        protected void GridCrimes_RowCommand(Object sender, GridViewCommandEventArgs e) {
            if (e.CommandName == "DeleteCrime") {
                DeleteCrime(int.Parse(e.CommandArgument.ToString()));
                Button4_Click(null, null); // Load crimes
            }
        }


        protected void GridCrimes_OnRowDeleting(object sender, GridViewDeleteEventArgs e) {
            e.Cancel = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = QueryData("crimes", "description LIKE '%" + SearchID.Text + "%'");
            DataTable data = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(data);
            grid_crimes.DataSource = data;
            grid_crimes.DataBind();
            cmd.Dispose();
        }

        private void SetCurrentDateTime() {
            TimeID.Text = DateTime.Now.ToString("HH:mm"); // HH = 24h format
            DateID.Text = DateTime.UtcNow.ToString("yyyy-MM-dd");
        }
        
        protected void Button5_Click(object sender, EventArgs e)
        {
            AddCrime(TB_CrimeType.Text, PlaceID.Text, DateID.Text, TimeID.Text, TB_Details.Text); 
            Button4_Click(null, null); // Load crimes
        }

        protected void grid_crimes_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("~/ViewCrime.aspx?Location=" + TB_CrimeType.Text + "&Details=" + TB_Details.Text + "&place=" + PlaceID);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Suspects.aspx");
        }

        protected void LoadCrimeByCity()
        {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select location, count(location) as number_of_crimes, 100 * count(location) / (select count(*) from crimes) as crime_ratio  from crimes  group by location";
            cmd.ExecuteNonQuery();
            //SqlCommand cmd = QueryData("crimes", "description LIKE '%" + SearchID.Text + "%'");
            DataTable data = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(data);
            CrimeByCity.DataSource = data;
            CrimeByCity.DataBind();
            cmd.Dispose();
        }

    }
}