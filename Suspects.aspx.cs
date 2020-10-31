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
    public partial class Suspects : BaseDataPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
        }
       
        protected void graidSuspect_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void graidSuspect_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            e.Cancel = true;
            ((GridView)sender).DataBind();
        }
        protected void graidSuspect_RowCommand(Object sender, GridViewCommandEventArgs e)
        {
        }
        public void DisplayDataFromTable(GridView gridView, string tabelName)
        {
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            AddSuspects(CrimeID.Text ,SusName.Text, SusAge.Text, SusID.Text, SusResidence.Text, SusStatus.Text);
            DisplayDataFromTable(GridSuspects, "Suspects");
        }
    }
}