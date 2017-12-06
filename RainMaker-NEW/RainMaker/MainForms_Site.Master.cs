using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace RainMaker
{
    public partial class MainForms_Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
               // SetMainControls();
      
            }
            
                
        }

        protected void SetMainControls()
        {
            
            BSS_Service.Service1SoapClient client = new BSS_Service.Service1SoapClient();
            String roleid = AppDomain.CurrentDomain.GetData("RoleID").ToString();
            DataTable dt = client.GetModuleFormsViaRoleID(Convert.ToInt16(roleid));
            string name = AppDomain.CurrentDomain.GetData("Name").ToString();
            lblName.Text = name;
            lblDesignation.Text = "Software";
            //zuserImage.ImageUrl = "../Images/user.png";
            string previous = "";
            var cls = dt.Rows[1][1].ToString();
            int c = 0;
            int i = 0;

            NavBar.InnerHtml = "";
            foreach (DataRow row in dt.Rows)
            {
                if (row["WebDisplayName"].ToString() != "0")
                {
                    if (row["ModuleName"].ToString() != previous)
                    {
                        if (c != 0)
                        {
                            //NavBar.InnerHtml += "</ul></li>";

                        }

                        NavBar.InnerHtml += " <li id='sami' onclick='reply_click(this.id)' class='nav-item'><a class='nav-link'><img src='../Images/home-icon.png'><span style='font-size:.8rem'>" + row["ModuleName"].ToString() + "</span></a></li> ";
                        if (c == 0) { c++; }
                        previous = row["ModuleName"].ToString();
                        i++;
                    }

      

                }


            }

            NavBar.InnerHtml += "<li ><a href=\"..\\frmLogin.aspx\">Log Out</a></li></ul>";





        }

        

     


    }
}