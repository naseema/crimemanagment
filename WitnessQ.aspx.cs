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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from crimes WHERE location AND date AND time =" + PlaceBox + TimeBox + DateBox;
            if (cmd.CommandText == PlaceBox.Text)
            {
                Response.Redirect("Witness.aspx");
            }
            else
            {
                Response.Write(" Error");
               
            }
            
        }
    }
}