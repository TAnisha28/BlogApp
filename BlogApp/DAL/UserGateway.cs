using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using BlogApp.UI;

namespace BlogApp.DAL
{
    public class UserGateway
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["UserConString"].ConnectionString;

        public void SaveUser(User user)
        {
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "INSERT INTO tb_user VALUES('" + user.Name + "', '" + user.Email +
                           "', '" + user.Password + "')";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();

            int rowAffected = command.ExecuteNonQuery();

            connection.Close();

            //return rowAffected;

        }

        internal bool CheckValidUser(User aUser)
        {
            int flag = 0;
            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM tb_user WHERE UserEmail='" + aUser.Email + "' AND UserPassword='" +
                           aUser.Password + "'";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                User bUser = new User();
                bUser.Name = reader["UserName"].ToString();
                bUser.Id = int.Parse(reader["UserId"].ToString());
                flag = 1;
                return true;
            }

            connection.Close();
            if(flag==0)
            {
                return false;
            }


            return true;
        }

    }
}