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
            if (!Page.IsPostBack)
            {
                Button4_Click(null, null); // Load crimes
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
            SqlCommand cmd = QueryData("crimes", "description LIKE '%" + TextBox1.Text + "%'");
            DataTable data = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(data);
            grid_crimes.DataSource = data;
            grid_crimes.DataBind();
            cmd.Dispose();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            AddCrime(TB_CrimeType.Text, TB_Details.Text);
            Button4_Click(null, null); // Load crimes
        }
    }
}