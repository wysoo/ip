<%-- 
    Document   : memberprofile
    Created on : Nov 9, 2014, 11:45:53 AM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="bean.User" %>

<c:if test="${sessionScope.memberprofile != null}">
    <% response.sendRedirect(request.getContextPath() + "/terminate.html"); %>
</c:if>

<jsp:useBean id="memberprofile" class="bean.User" scope="session" />

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">

    <title>Cash - Member</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/navbar-fixed-top.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span> <span style="color:#FFFF00">CashWeb</span></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="/ip/GetCashServlet"><span class="glyphicon glyphicon-usd"></span> Get Cash</a></li>
            <li><a href="/ip/MemberViewCashServlet"><span class="glyphicon glyphicon-th-list"></span> View Cash</a></li> 
          </ul>
          <ul class="nav navbar-nav navbar-right">
      		<li class="dropdown">
		        <a aria-expanded="false" href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> Welcome
                            <span style="color:#FFFF00"><jsp:getProperty name="memberprofile" property="fullName"/></span>
                            (Member) <b class="caret"></b></a>
			        <ul class="dropdown-menu">
			          <li><a href="/ip/memberprofile.jsp"><span class="glyphicon glyphicon-user"></span> User Profile</a></li>
			          <li><a href="/ip/MemberSettingServlet"><span class="glyphicon glyphicon-cog"></span> Setting</a></li>
			          <li class="divider"></li>
			          <li><a href="/ip/logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
			        </ul>
		  	</li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>Cash Web-App example</h1>
        <ul>
          <li>Responsive application</li>
          <li>Bootstrap CSS</li>
          <li>MVC
            <ul>
              <li>(M)odel - JavaBeans</li>
              <li>(V)iew - JSP for input and output</li>
              <li>(C)ontroller - Servlet</li>
            </ul>
          </li>
        </ul>
      </div>
      
      <div class="well">
        <h3>Member Profile / Change Password</h3>
        <p>&nbsp;</p>
        <div class="row">
            <div class="col-md-6">
                <form class="form-horizontal" action="/cash/MemberChangePasswordServlet" method="post">
                    <fieldset>
                        <div class="form-group">
                            <label for="fullname" class="col-lg-2 control-label">Full name</label>
                            <div class="col-lg-10">
                                <input class="form-control" id="fullname" name="fullname" value="<jsp:getProperty name="memberprofile" property="fullName"/>" type="text" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="login" class="col-lg-2 control-label">Login ID</label>
                            <div class="col-lg-10">
                                <input class="form-control" id="login" name="login" value="<jsp:getProperty name="memberprofile" property="login"/>" type="text" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-lg-2 control-label">New Password</label>
                            <div class="col-lg-10">
                                <input class="form-control" id="password" name="password" type="password" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <button class="btn btn-default">Cancel</button>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>                             
                    </fieldset>
                </form>                
            </div>
        </div>
      </div>      
      
      <footer>
      	<p>&copy; RBK 2014 - SCJ/SCSJ 2303/3303</p>
      </footer>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>