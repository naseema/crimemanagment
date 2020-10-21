using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

namespace CrimeManagement
{
    public partial class WebForm1 : System.Web.UI.Page
    {
    
        protected void Page_Load(object sender, EventArgs e)
        {
           
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

    }
}