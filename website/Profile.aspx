<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="mimi2.website.Profile" %>

<!DOCTYPE html>
<html class="no-js">
    <head>
        <!-- Basic Page Needs
        ================================================== -->
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="icon" href="favicon.ico">
        <title>KnacK | Show Your Talent</title>
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <!-- Mobile Specific Metas
        ================================================== -->
        <meta name="format-detection" content="telephone=no">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        
        <!-- Template CSS Files
        ================================================== -->
        <!-- Twitter Bootstrs CSS -->
        <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
        <!-- Ionicons Fonts Css -->
        <link rel="stylesheet" href="plugins/ionicons/ionicons.min.css">
        <!-- animate css -->
        <link rel="stylesheet" href="plugins/animate-css/animate.css">
        <!-- Hero area slider css-->
        <link rel="stylesheet" href="plugins/slider/slider.css">
        <!-- owl craousel css -->
        <link rel="stylesheet" href="plugins/owl-carousel/owl.carousel.css">
        <link rel="stylesheet" href="plugins/owl-carousel/owl.theme.css">
        <!-- Fancybox -->
        <link rel="stylesheet" href="plugins/facncybox/jquery.fancybox.css">
        <!-- template main css file -->
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>


        <!--
        ==================================================
        Header Section Start
        ================================================== -->
        <header id="top-bar" class="navbar-fixed-top animated-header">
            <div class="container">
                <div class="navbar-header">
                    <!-- responsive nav button -->
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    </button>
                    <!-- /responsive nav button -->
                    
                    <!-- logo -->
                    <div class="navbar-brand">
                        <a href="index.html" >
                            <img src="images/logo.png" alt="">
                        </a>
                    </div>
                    <!-- /logo -->
                </div>
                <!-- main menu -->
                <nav class="collapse navbar-collapse navbar-right" role="navigation">
                    <div class="main-menu">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="index.html" >Home</a>
                            </li>
                            <li><a href="about.html">About</a></li>
                        
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <span class="caret"></span></a>
                                <div class="dropdown-menu">
                                    <ul>
                                        <li>
                                            <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Change_password.aspx" runat="server">Change password</asp:HyperLink>
                                        <!--<li><a href="#">Edit Profile</a></li>-->
                                    </ul>
                                </div>
                            </li>
                            <li><a href="service.html">Artist Name</a></li>
                            <li>
                                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/logout.aspx" runat="server">Logout</asp:HyperLink>
                        </ul>
                    </div>
                </nav>
                <!-- /main nav -->
            </div>
        </header>
        

        <!-- 
        ================================================== 
            Global Page Section Start
        ================================================== -->
        <section class="global-page-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="block">
                            <h2>Your Portfolio</h2>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="index.html">
                                        <i class="ion-ios-home"></i>
                                        Home
                                    </a>
                                </li>
                                <li class="active">Profile</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>


<!--=======================================
=            Blog Left sidebar            =
========================================-->

<section id="blog-full-width">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="sidebar">
                    <div class="search widget">
                        <form action="" method="get" class="searchform" role="search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search for...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button"> <i class="ion-search"></i> </button>
                                </span>
                                </div><!-- /input-group -->
                            </form>
                        </div>
                        <div class="author widget">
                            <img class="img-responsive" src="images/author/author-bg.jpg">
                            <div class="author-body text-center">
                                <div class="author-img">
                                    <img src="images/author/author.jpg">
                                </div>
                                <div class="author-bio">
                                    <h3>Artist Name</h3>
                                    <p>About the Artist</p>
                                </div>
                            </div>
                        </div>
                        <div class="categories widget">
                            <h3 class="widget-head">Media</h3>
                            <ul>
                                <li>
                                    <a href="">Images</a> <span class="badge">1</span>
                                </li>
                                <li>
                                    <a href="">Videos</a> <span class="badge">0</span>
                                </li>
                                <!--<li>
                                    <a href=""></a> <span class="badge">4</span>
                                </li>
                                <li>
                                    <a href="">Standard</a> <span class="badge">2</span>
                                </li>
                                <li>
                                    <a href="">Status</a> <span class="badge">3</span>
                                </li>-->
                            </ul>
                        </div>
                        
                        <!--<div class="recent-post widget">
                            <h3>Top Uploads</h3>
                            <ul>
                                <li>
                                    <a href="#">Corporate meeting turns into a photoshooting.</a><br>
                                    <time>16 May, 2015</time>
                                </li>
                                <li>
                                    <a href="#">Statistics,analysis. The key to succes.</a><br>
                                    <time>15 May, 2015</time>
                                </li>
                                <li>
                                    <a href="#">Blog post without image, only text.</a><br>
                                    <time>14 May, 2015</time>
                                </li>
                                <li>
                                    <a href="#">Blog post with audio player. Share your creations.</a><br>
                                    <time>14 May, 2015</time>
                                </li>
                                <li>
                                    <a href="#">Blog post with classic Youtbube player.</a><br>
                                    <time>12 May, 2015</time>
                                </li>
                            </ul>
                        </div>-->
                    </div>
                </div>
                <div class="col-md-8">
                    <div>
                        <h2>Create Your Post</h2>
                        <style> 
                            textarea {
                                width: 100%;
                                height: 150px;
                                padding: 12px 20px;
                                box-sizing: border-box;
                                border: 2px solid #ccc;
                                border-radius: 4px;
                                background-color: #f8f8f8;
                                font-size: 16px;
                                resize: none;
                                }
                            </style>
                        <form>
                            <textarea></textarea>
                            <input type="file" name="pic" accept="image/*">
                            <div align="right">
                                <button class="btn">Post</button>
                            </div>
                        </form>
                    </div>
                    <article class="wow fadeInDown" data-wow-delay=".3s" data-wow-duration="500ms">
                        <div class="blog-post-image">
                            <a href="post-fullwidth.html"><img class="img-responsive" src="images/blog/post-1.jpg" alt="" /></a>
                        </div>
                        <div class="blog-content">
                            <h2 class="blogpost-title">
                            <a href="post-fullwidth.html">Final frontier is under construction.</a>
                            </h2>
                            <div class="blog-meta">
                                <span>Apr 6, 2019</span>
                                <span>by <a href="">Admin</a></span>
                                <span><a href="">business</a>,<a href="">people</a></span>
                            </div>
                            <p>We are trying so hard to provide the full features of the website. We are here for your future.
                            </p>
                            <!--<a href="single-post.html" class="btn btn-dafault btn-details">Continue Reading</a>-->
                        </div>
                    </article>
                    <!--<article class="wow fadeInDown" data-wow-delay=".5s" data-wow-duration="500ms">
                        <div class="blog-post-image">
                            <a href="post-fullwidth.html"><img class="img-responsive" src="images/blog/post-2.jpg" alt="" /></a>
                        </div>
                        <div class="blog-content">
                            <h2 class="blogpost-title">
                            <a href="post-fullwidth.html">Space shouldn’t be the final frontier</a>
                            </h2>
                            <div class="blog-meta">
                                <span>Dec 11, 2020</span>
                                <span>by <a href="">Admin</a></span>
                                <span><a href="">business</a>,<a href="">people</a></span>
                            </div>
                            <p>Ultrices posuere cubilia curae curabitur sit amet tortor ut massa commodo. Vestibulum consectetur euismod malesuada tincidunt cum. Sed ullamcorper dignissim consectetur ut tincidunt eros sed sapien consectetur dictum. Pellentesques sed volutpat ante, cursus port. Praesent mi magna, penatibus et magniseget dis parturient montes sed quia consequuntur magni dolores eos qui ratione.
                            </p>
                            <a href="single-post.html" class="btn btn-dafault btn-details">Continue Reading</a>
                        </div>
                    </article>
                    <article class="wow fadeInDown" data-wow-delay=".7s" data-wow-duration="500ms">
                        <div class="blog-post-image">
                            <a href="post-fullwidth.html"><img class="img-responsive" src="images/blog/post-3.jpg" alt="" /></a>
                        </div>
                        <div class="blog-content">
                            <h2 class="blogpost-title">
                            <a href="post-fullwidth.html">Space shouldn’t be the final frontier</a>
                            </h2>
                            <div class="blog-meta">
                                <span>Dec 11, 2020</span>
                                <span>by <a href="">Admin</a></span>
                                <span><a href="">business</a>,<a href="">people</a></span>
                            </div>
                            <p>Ultrices posuere cubilia curae curabitur sit amet tortor ut massa commodo. Vestibulum consectetur euismod malesuada tincidunt cum. Sed ullamcorper dignissim consectetur ut tincidunt eros sed sapien consectetur dictum. Pellentesques sed volutpat ante, cursus port. Praesent mi magna, penatibus et magniseget dis parturient montes sed quia consequuntur magni dolores eos qui ratione.
                            </p>
                            <a href="single-post.html" class="btn btn-dafault btn-details">Continue Reading</a>
                        </div>
                    </article>-->
                </div>
            </div>
        </div>
</section>

<!--====  End of Blog Left sidebar  ====--> 





            <!--
            ==================================================
            Call To Action Section Start
            ================================================== -->
            <section id="call-to-action">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="block">
                                <h2 class="title wow fadeInDown" data-wow-delay=".3s" data-wow-duration="500ms">SO WHAT YOU THINK ?</h1>
                                <p class="wow fadeInDown" data-wow-delay=".5s" data-wow-duration="500ms">Don't be nervous and just hold this opportunity to show your talent in your field and become happy.</p>
                                <a href="contact.html" class="btn btn-default btn-contact wow fadeInDown" data-wow-delay=".7s" data-wow-duration="500ms">Contact Us</a>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </section>

            <!--
            ==================================================
            Footer Section Start
            ================================================== -->
            <footer id="footer">
                <div class="container">
                    <div class="col-md-8">
                        <p class="copyright">Copyright: <span><script>document.write(new Date().getFullYear())</script></span> Design and Developed by <a href="about.html" target="_blank">Team KnacK</a>. <br> 
                            
                        </p>
                    </div>
                    <div class="col-md-4">
                        <!-- Social Media -->
                        <ul class="social">
                            <li>
                                <a href="https://www.facebook.com/knack.ml" class="Facebook">
                                    <i class="ion-social-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/knack.ml" class="Twitter">
                                    <i class="ion-social-instagram"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="Linkedin">
                                    <i class="ion-social-linkedin"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="Google Plus">
                                    <i class="ion-social-googleplus"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </footer> <!-- /#footer -->

	<!-- Template Javascript Files
	================================================== -->
	<!-- jquery -->
	<script src="plugins/jQurey/jquery.min.js"></script>
	<!-- Form Validation -->
    <script src="plugins/form-validation/jquery.form.js"></script> 
    <script src="plugins/form-validation/jquery.validate.min.js"></script>
	<!-- owl carouserl js -->
	<script src="plugins/owl-carousel/owl.carousel.min.js"></script>
	<!-- bootstrap js -->
	<script src="plugins/bootstrap/bootstrap.min.js"></script>
	<!-- wow js -->
	<script src="plugins/wow-js/wow.min.js"></script>
	<!-- slider js -->
	<script src="plugins/slider/slider.js"></script>
	<!-- Fancybox -->
	<script src="plugins/facncybox/jquery.fancybox.js"></script>
	<!-- template main js -->
	<script src="js/main.js"></script>
 	</body>
</html>
