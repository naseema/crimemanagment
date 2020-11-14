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

        static int crimeId;


        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = sqlConnection.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from crimes WHERE location = '" + PlaceBox.Text + "' and type = '" + DropDownType.Text + "' " +
                              "AND time like '"+TimeBox.Text +"%' AND date='" + DateBox.Text + "'";
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
                    detailsBox.Visible = true;
                    SendBtn.Visible = true;
                    crimeId = sqlr.GetInt32(0);
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
        protected void FileBtn_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)  //fileupload control contains a file  
                try
                {
                    FileUpload1.SaveAs("E:\\" + FileUpload1.FileName);          // file path where you want to upload  
                    Label1.Text = "File Uploaded Sucessfully !! " + FileUpload1.PostedFile.ContentLength + "mb";     // get the size of the uploaded file  
                }
                catch (Exception ex)
                {
                    Label1.Text = "File Not Uploaded!!" + ex.Message.ToString();
                }
            else
            {
                Label1.Text = "Please Select File and Upload Again";

            }
        }

        protected void SendBtn_Click(object sender, EventArgs e)
        {
            AddWitness( crimeId , detailsBox.Text);
            // TODO show "Witness was saved" page
        }


    }
}