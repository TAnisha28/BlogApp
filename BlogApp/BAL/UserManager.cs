using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BlogApp.DAL;
using BlogApp.UI;


namespace BlogApp.BAL
{
    public class UserManager
    {
        UserGateway aUserGateway = new UserGateway();
        public void SaveUser(User user)
        {
            aUserGateway.SaveUser(user);
        }

        internal bool CheckValidUser(User aUser)
        {
            return aUserGateway.CheckValidUser(aUser);
        }
    }
}