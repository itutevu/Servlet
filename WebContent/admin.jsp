<%@ page language ="java" import="java.sql.*"%>
<%@ page import="logbean.UserBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="Home.css">
	<script src="jquery-3.1.1.min.js"></script>
  	<script src="bootstrap/js/bootstrap.min.js"></script>
  	<style>
		footer
		{
			padding: 1em;
			color: white;
			background-color: black;
			clear: left;
			text-align: center;
		}
	</style>
  	
</head>
<body>
<div id="headingpic">
		<div class="row">
			<img src="heading.png" class="img-responsive img-thumbnail">
		</div>
		<div>
		<p class="text-center">
			<span class="h1">Learning </span><span class="h2">English Together</span>
			</p>
		</div>
	</div>
<div class="container">
	
	<div id="login">
		
  	</div>
	</div><br>
	<nav id="affix1" class="navbar navbar-inverse" data-spy="affix" data-offset-top="280">
  		<div class="container-fluid">
    		<div class="navbar-header">
        		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          			<span class="icon-bar"></span>
          			<span class="icon-bar"></span>
          			<span class="icon-bar"></span>
      			</button>
      			<a class="navbar-brand" style="color: white; width: 132px;font-size: 20px;" href="loginsuccess.jsp">HOME</a>
    		</div>
    		<div>
      			<div class="collapse navbar-collapse" id="myNavbar">
        			<ul class="nav navbar-nav">
			          	<li><a style="color: white; width: 132px;font-size: 20px;" href="register.jsp" class="btn">Register</a></li>
				        <li><a style="color: white; width: 81px;font-size: 20px;" href="#FAQ" class="btn">FAQ</a></li>
				        <li><a style="color: white; width: 132px;font-size: 20px;" href="schedule.jsp" class="btn">Calendar</a></li>


				        <li class="dropdown"><a style="color: white; width: 150px;font-size: 20px;" class="dropdown-toggle" data-toggle="dropdown" href="#">Online Test<span class="caret"></span></a>
            				<ul style="color: white;" class="dropdown-menu">
              				    <li><a href="Toeic-Test11.jsp" class="btn">Toeic 250-450</a></li>
              					<li><a href="Toeic-Test12.jsp" class="btn">Toeic 450-650</a></li>
              					<li><a href="Toeic-Test2.jsp" class="btn">Toeic 650-950</a></li>
            				</ul>
          				</li>
          				
          				<li class="dropdown"><a style="color: white; width: 132px;font-size: auto; margin-left: 437px" class="dropdown-toggle" data-toggle="dropdown" href="#">
          					<%UserBean currentUser=(UserBean)(session.getAttribute("currentSessionUser")); %>
          					<%
          						String username=currentUser.getFullName();
          						if(username==null) username="";
								out.print("<span>"+username+"</span>");
							%>
							<span class="caret"></span></a>
            				<ul style="color: white;margin-left: 437px; width: 270px;" class="dropdown-menu">
								<div id="ttcn">
									<div class="" style="background-color: #CCCCCC;  width: 100%;  height: 100%;">
										<div class="panel-body">

											<div class="menuColumns secondaryContent">
												<img src="1475230513_malecostume.png" width="120" height="120" alt="AnhCaNhan">
													<h4><strong>Name: </strong>
													<%
														out.print("<span>"+username+"</span>");
													%>
													</h4>
													<h5 style="margin-left:0px;">Profile <a href="changeinfo.jsp"><img src="1475233554_pencil.png" alt="ChinhSua" width="20" height="20"></a>
													<a style="margin-left: 70px" href="studyprogress.jsp">Study Progress</a></h5>
													<h5 style="margin-left:0px;"><a href="changeinfo.jsp">Post</a><a style="margin-left: 110px" href="filemanager.jsp">File Manager</a></h5>
													<h5 style="margin-left:0px;"><a href="changeinfo.jsp">Friend List</a><a style="margin-left: 70px" href="HOME.jsp">Black List</a></h5>
													<h5 style="margin-left:0px;"><a href="schedule.jsp">Schedules</a></h5>
											</div>
										</div>
									</div>
								</div>
            				</ul>
          				</li>    			





          				<li style="">
          					
          					<button id="sty-btn" class="col-md-2 col-md-offset-" data-target="#signModal" data-toggle="modal">Sign Out</button>
								<div class="modal" id="signModal" tabindex="-1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">&times;</button>
												<h4 class="modal-title">Do you want to sign out?</h4>
											</div>
											<div class="modal-footer">
											<div id="btnsignout">
												<div class="form-group">
					    						<a href="HOME.jsp" class="btn btn-default">Yes</a>
					      						<button type="submit" class="btn btn-default" data-dismiss="modal">No</button>
											</div>
											</div>
											</div>
										</div>
									</div>
								</div>
          				</li>
        			</ul>
      			</div>
    		</div>
  		</div>
	</nav>
	</div></br>
	<div id="forumchung" class="col-md-12">
		<div id="forum1" class="col-md-10">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title"><img src="1475242407_device-volume-loudspeaker-speaker-up-outline-stroke.png" height="38" width="38"> HALL</h1>
				</div>
				<div class="panel-body">
					<ul class="list-group" style="width: 100%;">
    					<li class="list-group-item" style="width: 100%;">
							<a href="https://www.facebook.com/groups/1605217843103977/?ref=ts&fref=ts" class="h4" style="color: blue;"> Sticky: Announcement-Rules </a> 
							<span><img style="margin-left: 335px;" src="Message.png" alt="Message" width="16" height="16"></span>
							<span style="margin-left: 5px;">65</span>
							<span><img style="margin-left: 3px;" src="document.png" alt="document" width="16" height="16"></span>
							<span style="margin-left: 2px;">33</span>
							<span style="margin-left: 50px;">Last poster:</span>
							<span style="margin-left: 5px;"><a href="linkpages" class="h5" style="color: blue;">Admin </a></span>
						</li>
    					<li class="list-group-item" style="width: 100%;">
							<a href="https://www.facebook.com/groups/1605217843103977/?ref=ts&fref=ts" class="h4" style="color: blue;"> Feed Back </a> 
							<span><img style="margin-left: 480px;" src="Message.png" alt="Message" width="16" height="16"></span>
							<span style="margin-left: 5px;">22</span>
							<span><img style="margin-left: 3px;" src="document.png" alt="document" width="16" height="16"></span>
							<span style="margin-left: 2px;">10</span>
							<span style="margin-left: 50px;">Last poster:</span>
							<span style="margin-left: 5px;"><a href="linkpages" class="h5" style="color: blue;">Admin </a></span>
						</li>
    					<li class="list-group-item" style="width: 100%;">
							<a href="https://www.facebook.com/groups/1605217843103977/?ref=ts&fref=ts" class="h4" style="color: blue;"> Group on Facebook </a> 
							<span><img style="margin-left: 407px;" src="Message.png" alt="Message" width="16" height="16"></span>
							<span style="margin-left: 5px;">123</span>
							<span><img style="margin-left: 3px;" src="document.png" alt="document" width="16" height="16"></span>
							<span style="margin-left: 2px;">234</span>
							<span style="margin-left: 35px;">Last poster:</span>
							<span style="margin-left: 5px;"><a href="linkpages" class="h5" style="color: blue;">Admin </a></span>
						</li>
  					</ul>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title"><img src="1475242539_books.png" height="38" width="38"> STUDY CORNER</h1>
				</div>
				<div class="panel-body">
					<ul class="list-group" style="width: 100%;">
    					<li class="list-group-item" style="width: 100%;">
							<a href="englishgrammar.jsp" class="h4" style="color: blue;"> English Grammars </a> 
							<span><img style="margin-left: 420px;" src="Message.png" alt="Message" width="16" height="16"></span>
							<span style="margin-left: 5px;">12</span>
							<span><img style="margin-left: 3px;" src="document.png" alt="document" width="16" height="16"></span>
							<span style="margin-left: 2px;">12</span>
							<span style="margin-left: 50px;">Last poster:</span>
							<span style="margin-left: 5px;"><a href="linkpages" class="h5" style="color: blue;">Tim Cook </a></span>
						</li>
    					<li class="list-group-item" style="width: 100%;">
							<a href="Vocabularys.jsp" class="h4" style="color: blue;"> English Vocabularys </a> 
							<span><img style="margin-left: 410px;" src="Message.png" alt="Message" width="16" height="16"></span>
							<span style="margin-left: 5px;">30</span>
							<span><img style="margin-left: 3px;" src="document.png" alt="document" width="16" height="16"></span>
							<span style="margin-left: 2px;">05</span>
							<span style="margin-left: 47px;">Last poster:</span>
							<span style="margin-left: 5px;"><a href="linkpages" class="h5" style="color: blue;">PAPP </a></span>
						</li>
    					<li class="list-group-item" style="width: 100%;">
							<a href="Toeic-Test2.jsp" class="h4" style="color: blue;"> Listening-Skill </a> 
							<span><img style="margin-left: 460px;" src="Message.png" alt="Message" width="16" height="16"></span>
							<span style="margin-left: 5px;">921</span>
							<span><img style="margin-left: 3px;" src="document.png" alt="document" width="16" height="16"></span>
							<span style="margin-left: 2px;">133</span>
							<span style="margin-left: 32px;">Last poster:</span>
							<span style="margin-left: 5px;"><a href="linkpages" class="h5" style="color: blue;">Jonh </a></span>
						</li>
						<li class="list-group-item" style="width: 100%;">
							<a href="Toeic-Test2.jsp" class="h4" style="color: blue;"> Speaking-Skill </a> 
							<span><img style="margin-left: 460px;" src="Message.png" alt="Message" width="16" height="16"></span>
							<span style="margin-left: 5px;">1</span>
							<span><img style="margin-left: 3px;" src="document.png" alt="document" width="16" height="16"></span>
							<span style="margin-left: 2px;">005</span>
							<span style="margin-left: 46px;">Last poster:</span>
							<span style="margin-left: 5px;"><a href="linkpages" class="h5" style="color: blue;">Jonh gas </a></span>
						</li>
						<li class="list-group-item" style="width: 100%;">
							<a href="Toeic-Test2.jsp" class="h4" style="color: blue;"> Writing-Skill </a> 
							<span><img style="margin-left: 475px;" src="Message.png" alt="Message" width="16" height="16"></span>
							<span style="margin-left: 5px;">89</span>
							<span><img style="margin-left: 3px;" src="document.png" alt="document" width="16" height="16"></span>
							<span style="margin-left: 2px;">09</span>
							<span style="margin-left: 50px;">Last poster:</span>
							<span style="margin-left: 5px;"><a href="linkpages" class="h5" style="color: blue;">Admin </a></span>
						</li>
						<li class="list-group-item" style="width: 100%;">
							<a href="linkpages" class="h4" style="color: blue;"> Document </a> 
							<span><img style="margin-left: 490px;" src="Message.png" alt="Message" width="16" height="16"></span>
							<span style="margin-left: 5px;">133</span>
							<span><img style="margin-left: 3px;" src="document.png" alt="document" width="16" height="16"></span>
							<span style="margin-left: 2px;">09</span>
							<span style="margin-left: 40px;">Last poster:</span>
							<span style="margin-left: 5px;"><a href="linkpages" class="h5" style="color: blue;">No Name </a></span>
						</li>
						<li class="list-group-item" style="width: 100%;">
							<a href="Toeic-Test12.jsp" class="h4" style="color: blue;"> Toeic-Test </a> 
							<span><img style="margin-left: 490px;" src="Message.png" alt="Message" width="16" height="16"></span>
							<span style="margin-left: 5px;">432</span>
							<span><img style="margin-left: 3px;" src="document.png" alt="document" width="16" height="16"></span>
							<span style="margin-left: 2px;">115</span>
							<span style="margin-left: 34px;">Last poster:</span>
							<span style="margin-left: 5px;"><a href="linkpages" class="h5" style="color: blue;">Richard </a></span>
						</li>
  					</ul>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title"><img src="1475242626_flat-headphone.png" height="38" width="38"> ENTERTAINMENT</h1>
				</div>
				<div class="panel-body">
					<ul class="list-group" style="width: 100%;">
    					<li class="list-group-item" style="width: 100%;">
							<a href="song.jsp" class="h4" style="color: blue;"> English Songs </a> 
							<span><img style="margin-left: 450px;" src="Message.png" alt="Message" width="16" height="16"></span>
							<span style="margin-left: 5px;">12</span>
							<span><img style="margin-left: 3px;" src="document.png" alt="document" width="16" height="16"></span>
							<span style="margin-left: 2px;">12</span>
							<span style="margin-left: 50px;">Last poster:</span>
							<span style="margin-left: 5px;"><a href="linkpages" class="h5" style="color: blue;">Tim Cook </a></span>
						</li>
    					<li class="list-group-item" style="width: 100%;">
							<a href="story.jsp" class="h4" style="color: blue;"> English Storys </a> 
							<span><img style="margin-left: 450px;" src="Message.png" alt="Message" width="16" height="16"></span>
							<span style="margin-left: 5px;">30</span>
							<span><img style="margin-left: 3px;" src="document.png" alt="document" width="16" height="16"></span>
							<span style="margin-left: 2px;">05</span>
							<span style="margin-left: 50px;">Last poster:</span>
							<span style="margin-left: 5px;"><a href="linkpages" class="h5" style="color: blue;">PAPP </a></span>
						</li>
    					<li class="list-group-item" style="width: 100%;">
							<a href="https://www.facebook.com/groups/1605217843103977/?fref=ts" class="h4" style="color: blue;"> Chat-Answer </a> 
							<span><img style="margin-left: 460px;" src="Message.png" alt="Message" width="16" height="16"></span>
							<span style="margin-left: 5px;">921</span>
							<span><img style="margin-left: 3px;" src="document.png" alt="document" width="16" height="16"></span>
							<span style="margin-left: 2px;">133</span>
							<span style="margin-left: 35px;">Last poster:</span>
							<span style="margin-left: 5px;"><a href="linkpages" class="h5" style="color: blue;">Jonh </a></span>
						</li>
						<li class="list-group-item" style="width: 100%;">
							<a href="linkpages" class="h4" style="color: blue;"> Community </a> 
							<span><img style="margin-left: 475px;" src="Message.png" alt="Message" width="16" height="16"></span>
							<span style="margin-left: 5px;">12</span>
							<span><img style="margin-left: 3px;" src="document.png" alt="document" width="16" height="16"></span>
							<span style="margin-left: 2px;">213</span>
							<span style="margin-left: 40px;">Last poster:</span>
							<span style="margin-left: 5px;"><a href="linkpages" class="h5" style="color: blue;">Richard </a></span>
						</li>
  					</ul>
				</div>
			</div>
		</div>
		<div id="forum2" class="col-md-2">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title">Online Member</h1>
				</div>
				<div class="panel-body">
					<span class="h5"><strong><span>Total: </span></strong>23</span></br>
					<span><h6>(member: 2, guest: 14, robots: 7)</h6></span>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title">Statistics Forum</h1>
				</div>
				<div class="panel-body">
					<span class="h5"><strong><span>Discussion Topics: </span></strong>113</span></br>
					<span class="h5"><strong><strong><span>Post: </span>94237</strong></span></br>
					<span class="h5"><strong><strong><strong><span>Members: </span></strong>759</span></br>
					<span class="h5"><strong><span>Latest member: </span></strong>Fools Garden</span></br>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title">Share this page</h1>
				</div>
				<div class="panel-body">
					<span class="h5"><a href="https://www.facebook.com/sharer/sharer.php?u=example.org" target="_blank">Share on Facebook</a><img src="social-facebook-box-blue-icon.png"></span></br>
					<span class="h5"><a href="https://twitter.com/intent/tweet?original_referer=https%3A%2F%2Fsupport.twitter.com%2Farticles%2F231474&ref_src=twsrc%5Etfw&text=Adding%20the%20Tweet%20button%20to%20your%20website%20%7C%20Twitter%20Help%20Center&tw_p=tweetbutton&url=https%3A%2F%2Fhelp.twitter.com%2Farticles%2F231474%3Flang%3Den&via=support" target="_blank">Twitter</a><img src="twitter_16px_1202653_easyicon.net.png"></span></br>
					<span class="h5"><a href="https://www.google.com.vn/?gfe_rd=cr&ei=WDHpV-ilN-jN8geKr6jYAQ&gws_rd=ssl" target="_blank">Google</a><img src="Google-Chrome-icon.png"></span>
				</div>
			</div>
		</div>
	</div>
</div>
<footer>								
	<div id="copyright">
		 Nhóm 13 lớp Lập trình Web - Khóa K14 Khoa Công Nghệ Thông Tin - ĐH Sư Phạm Kỹ Thuật Tp.HCM <br>
		  • Địa chỉ: 1 Võ Văn Ngân quận Thủ Đức TP.HCM • 
	</div>			
</footer>
</body>
</html>