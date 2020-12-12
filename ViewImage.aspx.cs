using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrimeManagement
{
    public partial class ViewImage : BaseDataPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
            Image1.ImageUrl = "data:image;base64, " + GetImage(Request.QueryString["id"]);
        }
    }
}