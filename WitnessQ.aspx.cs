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
            // Manually register the event-handling method for
            // the Click event of the Button control.
            Button1.Click += new EventHandler(this.Button1_Click);
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
                    // When the button is clicked,
                    // change the button text, and disable it.

                    Button clickedButton = (Button)sender;
                    clickedButton.Text = "...button clicked...";
                    clickedButton.Enabled = false;

                    // Display the greeting label text.
                    Label2.Visible = true;
                    TextBox1.Visible = true;
                    SendBtn.Visible = true;
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