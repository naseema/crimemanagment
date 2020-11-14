using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace CrimeManagement
{
    public class ImageHandler : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            string imageid = context.Request.QueryString["ImID"];
            SqlConnection con = new SqlConnection("Data Source=Suresh;Integrated Security=true;Initial Catalog=MySampleDB");
            con.Open();
            SqlCommand cmd = new SqlCommand("select ImageToDB from Image where imageid=" + imageid, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            context.Response.BinaryWrite((byte[])dr[0]);
            con.Close();
            context.Response.End();
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
    
}