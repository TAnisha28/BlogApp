using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using BlogApp.model;

namespace BlogApp.DAL
{
    public class ArticleGateway
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["UserConString"].ConnectionString;
        public void Save(Article article)
        {
            string query = "INSERT INTO tb_article VALUES('" + article.ArticleName + "','" + article.ArticleDis + "','" + article.Date + "','" + article.Draft + "')";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
    }
}