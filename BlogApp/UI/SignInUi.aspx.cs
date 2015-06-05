using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogApp.BAL;

namespace BlogApp.UI
{
    public partial class SignInUi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserManager aUserManager= new UserManager();
            User aUser = new User();
            aUser.Email = txtCheckEmail.Text;
            aUser.Password = txtCheckPassword.Text;

            Session["checkUser"] = aUser;
            if (aUserManager.CheckValidUser(aUser) == true)
            {
                //HomeUi aHomeUi= new HomeUi();
              
                Response.Redirect("HomeUi.aspx");
            }

            
        }
    }
}