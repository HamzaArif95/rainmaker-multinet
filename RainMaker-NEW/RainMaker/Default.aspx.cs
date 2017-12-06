using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RainMaker
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        [System.Web.Services.WebMethod]
        public static string LiClick(string id)
        {
            return String.Format("You clicked on - {0} ", id);

        }
    }
}