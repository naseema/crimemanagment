using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;

namespace CrimeManagement
{
    public partial class ViewCrime : BaseDataPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
            if (!Page.IsPostBack) {

                if (!String.IsNullOrEmpty(Request.QueryString["id"])) {
                    this.TextBox1.Text = Request.QueryString["id"];
                    Crime crime = GetCrime(TextBox1.Text);
                    if (crime != null) {
                        TextBox2.Text = crime.description;
                        TextBox3.Text = crime.location;
                        TextBox4.Text = crime.time.ToString();
                        TextBox5.Text = crime.date.ToString("dd.MM.yyyy");
                        ShowWitness(Request.QueryString["id"]);
                        ReloadSuspects();
                    }
                    else {
                        // TODO crime not found
                    }
                }
                else {
                    // TODO bad params, show error
                }

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

        protected void Suspects_RowCommand(Object sender, GridViewCommandEventArgs e) {
            if (e.CommandName == "ChangeCommitStatus") {
                string crimeID = e.CommandArgument.ToString().Split(',')[0];
                string suspectId = e.CommandArgument.ToString().Split(',')[1];
                bool isCommitted = (e.CommandArgument.ToString().Split(',')[2] != "0");
                ChangeSuspectCommittedCrime(crimeID,suspectId, !isCommitted);
                ReloadSuspects();
            }
            if (e.CommandName == "DeleteSuspect") {
                string crimeID = e.CommandArgument.ToString().Split(',')[0];
                string suspectId = e.CommandArgument.ToString().Split(',')[1];
                DeleteSuspectFromCrime(crimeID,suspectId);
                ReloadSuspects();
            }
            if (e.CommandName == "AddSuspect") {
                string crimeID = Request.QueryString["id"];
                string suspectId = e.CommandArgument.ToString();
                AddSuspectToCrime(crimeID, suspectId);
                FilterSusbectTB.Text = null;
                GridViewAddSuspects.Visible = false;
                ReloadSuspects();
            }
        }
        protected void chkApproved_CheckedChanged(object sender, EventArgs e)
        {
            // https://stackoverflow.com/questions/38184888/get-a-checkbox-to-command-a-gridview-row
            // CheckBox chkApproved = (CheckBox)sender;
            // GridViewRow gridViewRow = (GridViewRow)chkApproved.Parent.Parent;
            // int orderID = (int)GridViewdoc.DataKeys[gridViewRow.RowIndex].Value;
            // bool approved = chkApproved.Checked;
            
            //Your update method
            // ChangeSuspectCommittedCrime(crimeId,sus approved);
            //Your data load method
            ReloadSuspects();
        }
        
        protected void FilterSusbectTB_TextChanged(object sender, EventArgs e) {
            SqlCommand cmd = QueryData("Suspects", "SuspectName LIKE '%" + FilterSusbectTB.Text +"%'");
            DataTable data = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(data);
            GridViewAddSuspects.DataSource = data;
            GridViewAddSuspects.DataBind();
            cmd.Dispose();
        }

        private void ReloadSuspects() {
            string table =
                "crimes JOIN CrimeSuspects ON crimes.Id = CrimeSuspects.crimeId  JOIN Suspects ON Suspects.Id = CrimeSuspects.SuspectsID";
            
            SqlCommand cmd= QueryData(table, "crimes.ID=" + Request.QueryString["id"] );

            DataTable data = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(data);
            GridViewSuspects.DataSource = data;
            GridViewSuspects.DataBind();
            cmd.Dispose();
            
        }
    }

        
}