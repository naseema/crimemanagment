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
    public partial class WitnessQ : BaseDataPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
            string v = Request.QueryString["id"];
            if (v != null)
            {
                GetWitmessCrime(Request.QueryString["id"]);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from crimes WHERE location = '" + PlaceBox.Text + "' and type = '" + TypeBox.Text + "'";
            //cmd.CommandText = "Select * from crimes WHERE type = '" + TypeBox.Text + "'" ;
            SqlDataReader sqlr = null;
            try
            {
                sqlr = cmd.ExecuteReader();
                if (sqlr.Read())
                {
                    Response.Redirect("Witness.aspx");
                    Response.Redirect("~/Witness.aspx?TypeCrime=" + TypeBox.Text + "&Location=" + PlaceBox.Text);
                }
                else
                {
                    Response.Write(" Error");
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