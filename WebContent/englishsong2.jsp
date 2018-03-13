<%@ page language ="java" import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="englishsong.css">
  	<script src="jquery-3.1.1.min.js"></script>
  	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  	<script src="bootstrap/js/bootstrap.min.js"></script>
  	<script>
  		$(document).ready(function(){
    $("#btnshowhide").click(function(){
        $("#pnuser").toggle();
    });
	});
  	</script>
	<title>English Song</title>
</head>
<body>
<div class="container">
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
	<div id="login">
		<div class="btn-toolbar">
			<span class="h4">Hello 
				<button id="btnshowhide" style="vertical-align:middle"><span>QuangVu</span></button>
				<div id="pnuser" class="panel-group">
					<div id="ttcn">
						<div class="panel panel-default" style="background-color: #CCCCCC;">
							<div class="panel-body">
								<img src="1475230513_malecostume.png" width="120" height="120" alt="AnhCaNhan">
									<h4><strong>Name: </strong>QuangVu</h4>
									<h5 style="margin-left:0px;">Profile <a href="changeinfo.jsp"><img src="1475233554_pencil.png" alt="ChinhSua" width="20" height="20"></a><a style="margin-left: 70px" href="HOME.jsp">Study Progress</a></h5>
									<h5 style="margin-left:0px;"><a href="changeinfo.jsp">Post</a><a style="margin-left: 107px" href="HOME.jsp">File Manager</a></h5>
									<h5 style="margin-left:0px;"><a href="changeinfo.jsp">Friend List</a><a style="margin-left: 68px" href="HOME.jsp">Black List</a></h5>
									<h5 style="margin-left:0px;"><a href="changeinfo.jsp">Schedules</a></h5>
							</div>
						</div>
					</div>
				</div>
			</span>
    	</div>
  	</div>
	</div></br>
	<div class=col-md-12>
	<div class="btn-group btn-group-justified">
		<div class="btn-group">
			<button class="btn btn-primary">Register</button>
		</div>
		<div class="btn-group">
			<button class="btn btn-primary">FAQ</button>
		</div>
		<div class="btn-group">
			<button class="btn btn-primary">Study</button>
		</div>
		<div class="btn-group">
			<button class="btn btn-primary">Community</button>
		</div>
		<div class="btn-group">
			<button class="btn btn-primary">Calendar</button>
		</div>
	</div>
	</div></br>
	</br>
	<div id="forumchung" class="col-md-12">
		<div id="forum1" class="col-md-9">
			<div id="forum11" class="col-md-10">
			<video width="800" height="450" controls>
  				<source src="Locked Away Lyrics - R City ft. Adam Levine (Lyric Video) HD.mp4" type="video/mp4">
  				<source src="Locked Away Lyrics - R City ft. Adam Levine (Lyric Video) HD.ogg" type="video/ogg">
  				Your browser does not support HTML5 video.
			</video>
			</div>
			<div id="forum11" class="col-md-2">
			<ul>
				<li><a href="englishsong.jsp">When You're Gone(VietSub)</a></li>
				<li><a href="#">Cry on my shoulder(VietSub)</a></li>
				<li><a href="#">Let her go(VietSub)</a></li>
				<li><a href="#">Say Something(VietSub)</a></li>
				<li><a href="#">Love yourself(VietSub)</a></li>
				<li><a href="#">Counting Stars(VietSub)</a></li>
				<li><a href="#">The night(VietSub)</a></li>
			</ul>
			</div>
		</div>
		<div id="forum2" class="col-md-3">
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
					<span class="h5"><a href="https://www.facebook.com/sharer/sharer.php?u=https://www.google.com.vn/?gfe_rd=cr&ei=jRTuV-OyL4yG2QS4j734Ag&gws_rd=ssl" target="_blank">Share on Facebook</a><img src="social-facebook-box-blue-icon.png"></span></br>
					<span class="h5"><a href="https://twitter.com/intent/tweet?original_referer=https%3A%2F%2Fsupport.twitter.com%2Farticles%2F231474&ref_src=twsrc%5Etfw&text=Adding%20the%20Tweet%20button%20to%20your%20website%20%7C%20Twitter%20Help%20Center&tw_p=tweetbutton&url=https%3A%2F%2Fhelp.twitter.com%2Farticles%2F231474%3Flang%3Den&via=support" target="_blank">Twitter</a><img src="twitter_16px_1202653_easyicon.net.png"></span></br>
					<span class="h5"><a href="https://www.google.com.vn/?gfe_rd=cr&ei=WDHpV-ilN-jN8geKr6jYAQ&gws_rd=ssl" target="_blank">Google</a><img src="Google-Chrome-icon.png"></span>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>