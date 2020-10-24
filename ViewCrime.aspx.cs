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
    public partial class ViewCrime : BaseDataPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);

            if (!String.IsNullOrEmpty(Request.QueryString["id"]))
            {
                this.TextBox1.Text = Request.QueryString["id"];
                Crime crime = GetCrime(TextBox1.Text);
                if (crime != null)
                {
                    TextBox2.Text = crime.description;
                    ShowWitness(Request.QueryString["id"]);
                }
                else
                {
                    // TODO crime not found
                }
            }
            else
            {
                // TODO bad params, show error
            }
        }

        private void ShowWitness(String crimeId)
        {
            SqlCommand cmd = QueryData("Witness", "crimeId=" + crimeId);
            DataTable data = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(data);
            GridView1.DataSource = data;
            GridView1.DataBind();
            cmd.Dispose();
        }

        
    }

        
}