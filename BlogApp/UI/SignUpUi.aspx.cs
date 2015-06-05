using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogApp.BAL;

namespace BlogApp.UI
{
    
    public partial class SignUpUi : System.Web.UI.Page
    {
        User aUser = new User();
        UserManager aUserManager=new UserManager();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnUserSave_Click(object sender, EventArgs e)
        {
            aUser.Name = txtName.Text;
            aUser.Email = txtEmail.Text;
            if(txtPass.Text== txtRe.Text)
            aUser.Password = txtPass.Text;
            
            Session["userSession"] = aUser;
            aUserManager.SaveUser(aUser);

        }
    }
}