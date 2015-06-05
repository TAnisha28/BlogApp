using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlogApp.BAL;
using BlogApp.model;

namespace BlogApp.UI
{
    public partial class NewThreat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ArticleManager articleManager=new ArticleManager();
        protected void saveButton_Click(object sender, EventArgs e)
        {
            Article article = new Article();
            article.ArticleName = titleTextBox.Text;
            article.Date = dateTextBox.Text;
            article.Draft = 0;
            article.ArticleDis = Request.Form["edit"];
           title.InnerHtml= article.ArticleName;
            date.InnerHtml = article.Date;
            showArticle.InnerHtml = article.ArticleDis;
            articleManager.Save(article);
        }
    }
}