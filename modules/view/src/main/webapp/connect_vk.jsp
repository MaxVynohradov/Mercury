<%@ page import="nc.sumy.edu.webapp.integration.IntegrationImpl" %>
<%@ page import="nc.sumy.edu.webcontainer.common.integration.SocialNetworks" %><%--
  Created by IntelliJ IDEA.
  User: Вадим
  Date: 18.06.2016
  Time: 13:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Vk connection</title>
    <!-- Style links -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="lib/waves.js/waves.min.css" rel="stylesheet">
    <link href="css/form.css" rel="stylesheet">
    <link href="css/menu.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/icon.ico" type="image/x-icon">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <nav class="navbar  sidebar" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar" style="background-color:black !important;"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img src="images/logo-large.svg" alt="logo"></a>
            </div>
            <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Create post<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon glyphicon-send"></span></a></li>
                    <li><a href="#">Your posts<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-paperclip"></span></a></li>
                    <li class="disabled"><a href="#">Agregation wall<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-folder-open"></span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-cog"></span></a>
                        <ul class="dropdown-menu forAnimate" role="menu">
                            <li><a href="#">Add accounts</a></li>
                            <li><a href="#">Remove accounts</a></li>
                            <li><a href="#">Change your profile</a></li>
                        </ul>
                    </li>
                    <li><a href="#">About<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
                    <li><a href="#">Log out<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-log-out"></span></a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="main">
        <section>
            <div class="container">

                <div id="loginbox" class="mainbox col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">

                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <img class="img-responsive" src="images/logo-large.svg" alt="logo">
                        </div>
                    </div>

                    <div class="row panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title text-center">Connect your social networks</div>
                        </div>
                        <div class="row panel-body text-center">
                            <h2>Create connection with Vk</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam aliquid animi at
                                consequatur dicta doloremque eaque eos eum expedita illum molestias nam obcaecati,
                                placeat quos recusandae sapiente tempora vero voluptas.2</p>
                            <div class="row">
                                <a href="
                                    <%= new IntegrationImpl().getAuthorisationUrlForNetwork(SocialNetworks.VK) %>
                                "><button class="btn btn-primary btn-lg">Log in Vk</button></a>
                            </div>
                            <div class="row" style="margin-top: 25px;">
                                <div class="form-group">
                                    <form name="form" id="form" class="form-horizontal" enctype="multipart/form-data" method="POST">
                                        <div class="input-group-lg" >
                                            <input type="text" placeholder="Enter access token" style="width: 80%;"/>
                                        </div>
                                        <a href="\VkCodeProcessor">
                                            <button type="cancel" class="btn btn-danger" style="margin-right:15px;"><i class="glyphicon glyphicon-remove"></i>&nbsp;&nbsp;&nbsp;Cancel</button>
                                        </a>
                                        <button type="submit" class="btn btn-success"><i class="glyphicon glyphicon-oks"></i>&nbsp;&nbsp;&nbsp;Submit</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="particles"></div>
        </section>
    </div>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>
    <script type="text/javascript" src="lib/waves.js/waves.min.js"></script>
</body>
</html>