﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace CrimeManagement
{
    public partial class imagePage : System.Web.UI.Page
    {

        string strCon = "Data Source=Suresh;Integrated Security=true;Initial Catalog=MySampleDB";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridviewData();
            }
        }
        // Bind Gridview Data
        private void BindGridviewData()
        {
            using (SqlConnection con = new SqlConnection(strCon))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select imageid,ImageName from ImageToDB";
                    cmd.Connection = con;
                    con.Open();
                    gvImages.DataSource = cmd.ExecuteReader();
                    gvImages.DataBind();
                    con.Close();
                }
            }
        }

        // Save files to Folder and files path in database
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            //Condition to check if the file uploaded or not
            if (fileUpload1.HasFile)
            {
                int length = fileUpload1.PostedFile.ContentLength;
                byte[] imgbyte = new byte[length];
                HttpPostedFile img = fileUpload1.PostedFile;
                //set the binary data
                img.InputStream.Read(imgbyte, 0, length);
                string filename = Path.GetFileName(fileUpload1.PostedFile.FileName);
                using (SqlConnection con = new SqlConnection(strCon))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "insert into ImageToDB(ImageName,Image) values(@Name,@Data)";
                        cmd.Parameters.AddWithValue("@Name", filename);
                        cmd.Parameters.AddWithValue("@Data", imgbyte);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        BindGridviewData();
                    }
                }
            }
        }
    }
}