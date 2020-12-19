using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace CrimeManagement {
    public partial class WitnessQ : BaseDataPage {
        static string fileData;
        protected void Page_Load(object sender, EventArgs e) {
            base.Page_Load(sender, e);
            if (!IsPostBack) // To avoid refreshing the page when clicking a button
            {
                if (!Page.IsPostBack) {
                    // Load first open
                    // Manually register the event-handling method for
                    // the Click event of the Button control.
                    Button1.Click += new EventHandler(this.Button1_Click);
                }
            }
            if (IsPostBack && FileUpload1.PostedFile != null)
            {    
                if (FileUpload1.HasFile) {
                    Label1.Text = FileUpload1.FileName;
                    fileData = Convert.ToBase64String(FileUpload1.FileBytes);
                    ImageContainer.ImageUrl = "data:image;base64," + fileData;
                }
            }
 
        }

        static int crimeId;


        protected void Button1_Click(object sender, EventArgs e) {
            var result = IsCrimeExist(PlaceBox.Text, DropDownType.Text, TimeBox.Text, DateBox.Text);
            if (result > -1) // If we found crime with the informmation above
            {
                // When the button is clicked,
                // change the button text, and disable it.

                Button clickedButton = (Button)sender;
                //clickedButton.Text = "...button clicked...";
                clickedButton.Enabled = false;

                // Display the greeting label text.
                Label2.Visible = true;
                detailsBox.Visible = true;
                SendBtn.Visible = true;
                FileUpload1.Visible = true;
                crimeId = result;
            } else
            {
                Response.Write("<span style='height:118px;width:117px;Z-INDEX: 100; LEFT: 500px; TOP: 450px ; color:red ;  background-color:lightgrey; font-size:Larger'>Sorry ,There is no such crime!</span>");

            }
               
        }

        protected void SendBtn_Click(object sender, EventArgs e) {
            AddWitness(crimeId, detailsBox.Text, fileData);
            Response.Redirect("ThanxPage.aspx");
        }

        protected void OnUploadChange(object sender, EventArgs e) {
            AddWitness(crimeId, detailsBox.Text, Convert.ToBase64String(FileUpload1.FileBytes));
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("FirstPage.aspx");
        }
    }
}