<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewThreat.aspx.cs" Inherits="BlogApp.UI.NewThreat" validateRequest="false"  EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>New Threat</title>
    <link href="../App_Themes/Theme1/style.css" rel="stylesheet" />
    <link href="../Content/font-awesome.css" rel="stylesheet" />
    <link href="../froala_editor_1.2.7/css/froala_editor.css" rel="stylesheet" />
    <link href="../froala_editor_1.2.7/css/froala_style.css" rel="stylesheet" />
    <link href="../Content/style.css" rel="stylesheet" />
    <link href="../Content/StyleEditor.css" rel="stylesheet" />
   </head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="wrapper">
	<div id="header-wrapper" class="container">
	<div id="header" class="container">
		<div id="logo">
			<h1><a href="#">BlogBD</a></h1>
		</div>
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="#">Homepage</a></li>
				<li><a href="NewThreat.aspx">New Threat</a></li>
				<li><a href="SignUpUi.aspx">Sign Up</a></li>
				<li><a href="SignInUi.aspx">Sign In</a></li>
				<%--<li><a href="#">Contact</a></li>--%>
			</ul>
		</div>
	</div>
	<%--<div><img src="images/img03.png" width="1000" height="40" alt="" /></div>--%>
	</div>
	<!-- end #header -->
	<div id="page">
		<div id="content">
             
			<div class="post">
            
				<h2 class="title"><asp:Label ID="Label4" runat="server" Text="Title: "></asp:Label>
                <asp:TextBox  ID="titleTextBox" runat="server"></asp:TextBox></h2>
                <p class="meta"><span class="date"><asp:Label ID="Label1" runat="server" Text="Publish Date: "></asp:Label>
                <asp:TextBox ID="dateTextBox" runat="server"></asp:TextBox></span>
                 <span class="posted"><asp:Label ID="Label5" runat="server" Text="Author Name: "></asp:Label>
                <asp:TextBox ID="authorNameTextBox" runat="server"></asp:TextBox></span></p>
                <section>
       

            <textarea id="edit" runat="server"></textarea><br/>

            <asp:Button ID="saveButton" runat="server"  Text="Save" OnClick="saveButton_Click" />
       
      
          </section>
                   
				<div style="clear: both;">&nbsp;</div>
				<div class="entry">
		
				</div>
			</div>
			<div class="post">
			    
				<h2 class="title" id="title" runat="server"></h2>
				<p class="meta"><span class="date" id="date" runat="server">
                 </span>
                   <%-- <span class="posted">Posted by </span></p>--%>
                    </p>
                	<div runat="server" id="showArticle"></div>
                    </div>
				<div style="clear: both;">&nbsp;</div>
				<%--<div class="entry">
					<p>Sed lacus. Donec lectus. Nullam pretium nibh ut turpis. Nam bibendum. In nulla tortor, elementum vel, tempor at, varius non, purus. Mauris vitae nisl nec metus placerat consectetuer. Donec ipsum. Proin imperdiet est. Phasellus <a href="#">dapibus semper urna</a>. Pellentesque ornare, orci in consectetuer hendrerit, urna elit eleifend nunc, ut consectetuer nisl felis ac diam. Etiam non felis. Donec ut ante. In id eros. Suspendisse lacus turpis, cursus egestas at sem.  Mauris quam enim, molestie in, rhoncus ut, lobortis a, est.</p>
					<p class="links"><a href="#" class="more">Read More</a><a href="#" title="b0x" class="comments">Comments</a></p>
			
			</div>--%>

			<%--<div class="post">
				<h2 class="title"><a href="#">Consecteteur hendrerit </a></h2>
				<p class="meta"><span class="date">August 10, 2012</span><span class="posted">Posted by <a href="#">Someone</a></span></p>
				<div style="clear: both;">&nbsp;</div>
				<div class="entry">
					<p>Sed lacus. Donec lectus. Nullam pretium nibh ut turpis. Nam bibendum. In nulla tortor, elementum vel, tempor at, varius non, purus. Mauris vitae nisl nec metus placerat consectetuer. Donec ipsum. Proin imperdiet est. Phasellus <a href="#">dapibus semper urna</a>. Pellentesque ornare, orci in consectetuer hendrerit, urna elit eleifend nunc, ut consectetuer nisl felis ac diam. Etiam non felis. Donec ut ante. In id eros. Suspendisse lacus turpis, cursus egestas at sem.  Mauris quam enim, molestie in, rhoncus ut, lobortis a, est.</p>
					<p class="links"><a href="#" class="more">Read More</a><a href="#" title="b0x" class="comments">Comments</a></p>
				</div>
			</div>--%>
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li>
					<div id="search" >
						<form method="get" action="#">
							<div>
								<input type="text" name="s" id="search-text" value="" />
								<input type="submit" id="search-submit" value="GO" />
							</div>
						</form>
					</div>
					<div style="clear: both;">&nbsp;</div>
				</li>
				<li>
					<h2>Aliquam tempus</h2>
					<p>Mauris vitae nisl nec metus placerat perdiet est. Phasellus dapibus semper consectetuer hendrerit.</p>
				</li>
				<li>
					<h2>Categories</h2>
					<ul>
						<li><a href="#">Aliquam libero</a></li>
						<li><a href="#">Consectetuer adipiscing elit</a></li>
						<li><a href="#">Metus aliquam pellentesque</a></li>
						<li><a href="#">Suspendisse iaculis mauris</a></li>
						<li><a href="#">Urnanet non molestie semper</a></li>
						<li><a href="#">Proin gravida orci porttitor</a></li>
					</ul>
				</li>
				<li>
					<h2>Blogroll</h2>
					<ul>
						<li><a href="#">Aliquam libero</a></li>
						<li><a href="#">Consectetuer adipiscing elit</a></li>
						<li><a href="#">Metus aliquam pellentesque</a></li>
						<li><a href="#">Suspendisse iaculis mauris</a></li>
						<li><a href="#">Urnanet non molestie semper</a></li>
						<li><a href="#">Proin gravida orci porttitor</a></li>
					</ul>
				</li>
				<li>
					<h2>Archives</h2>
					<ul>
						<li><a href="#">Aliquam libero</a></li>
						<li><a href="#">Consectetuer adipiscing elit</a></li>
						<li><a href="#">Metus aliquam pellentesque</a></li>
						<li><a href="#">Suspendisse iaculis mauris</a></li>
						<li><a href="#">Urnanet non molestie semper</a></li>
						<li><a href="#">Proin gravida orci porttitor</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<div class="container"><img src="images/img03.png" width="1000" height="40" alt="" /></div>
	<!-- end #page -->
</div>
<div id="footer-content"></div>
<div id="footer">
	<p>Copyright (c) 2012 Sitename.com. All rights reserved. Design by <a href="http://www.freecsstemplates.org">FCT</a>.</p>
</div>
<!-- end #footer -->
    </div>
    </form>
    
    <script src="../Scripts/jquery-2.1.4.js"></script>
    <script src="../froala_editor_1.2.7/js/froala_editor.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/tables.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/lists.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/colors.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/media_manager.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/font_family.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/font_size.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/video.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/block_styles.min.js"></script>
    <script>
        $(function () {
            $('#edit').editable({ inlineMode: false, height: 300, alwaysBlank: true })
        });
  </script>
     
</body>
</html>
