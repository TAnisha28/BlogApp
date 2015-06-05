using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BlogApp.DAL;
using BlogApp.model;

namespace BlogApp.BAL
{
    public class ArticleManager
    {
        ArticleGateway gateway = new ArticleGateway();

        public void Save(Article article)
        {
            gateway.Save(article);
        }
    }
}