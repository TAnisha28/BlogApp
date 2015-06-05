using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlogApp.model
{
    public class Article
    {
        public int ArticleId { set; get; }
        public string ArticleName { set; get; }
        public string ArticleDis { set; get; }
        public string Date { set; get; }
        public int Draft { set; get; }
    }
}