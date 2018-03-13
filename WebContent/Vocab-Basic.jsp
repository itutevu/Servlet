<%@ page language ="java" import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<title>Vocab-Basic</title>
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
	</div></br>
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
				        <li><a style="color: white; width: 132px;font-size: 20px;" href="#Calendar" class="btn">Calendar</a></li>
				        <li class="dropdown"><a style="color: white; width: 132px;font-size: 18px;" class="dropdown-toggle" data-toggle="dropdown" href="#">Online Test<span class="caret"></span></a>
            				<ul style="color: white;" class="dropdown-menu">
              				 	<li><a href="Toeic-Test11.jsp" class="btn">Toeic 250-450</a></li>
              					<li><a href="Toeic-Test12.jsp" class="btn">Toeic 450-650</a></li>
              					<li><a href="Toeic-Test2.jsp" class="btn">Toeic 650-950</a></li>
            				</ul>
          				</li>
          				<li style="margin-left: 534px;">
          					<button id="sty-btn" type="button" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#myModal">LOGIN</button>
  							<div style="color: white;" class="modal fade" id="myModal" role="dialog"">
    							<div class="modal-dialog">
      								<div class="modal-content" style="background-color: #9BDDFF">
        								<div class="modal-header">
        									<div style="text-align: center;margin: 24px 0 12px 0;position: relative;">
	          									<button type="button" class="close" data-dismiss="modal">&times;</button>
	          									<img src="img_avatar2.png" alt="Avatar" class="avatar" style="text-align: center;width: 30%; border-radius: 50%">
          									</div>
        								</div>
        								<div class="modal-body">
        								<center>
	          								<form class="form-horizontal">
												<div class="form-group">
													<label for="inputusername" style="font-family: Times;color: black;"><h3>Username: </h3></label>
													<input id="txtlogin" type="text" name="form-control" style="font-family: Times;color: black;" placeholder="Enter Your ID" required/>
												</div>
												<div class="form-group">
													<label class="inputpasswork" style="font-family: Times;color: black;"><h3>Password: </h3></label>
													<input id="txtlogin" type="password" style="font-family: Times;color: black;" name="form-control" placeholder="Enter Your Pass" required/>
												</div>
												<input type="checkbox" checked="checked""><span style="color: black;"> Remember me</span></br></br>
												<button id="btnlogin" type="submit" style="text-align: center; width: 200px;height: 40px;color: black;">Login</button>
											</form>
										</center>
        							</div>
        							<div class="modal-footer">
        								<div style="text-align: center;color: black;">
        									<div class="form-group">
        										<p>Forgot <a href="loginsucess.jsp">Password</a></p>
        									</div>
        								</div>
        							</div>
      							</div>
    						</div>
  						</div>
          				</li>
          				<li style="">
          					<button id="sty-btn" class="btn btn-primary btn-sm pull-right" data-target="#signModal" data-toggle="modal">SIGN UP</button>
							<div class="modal" id="signModal" tabindex="-1" style="color: white;">
								<div class="modal-dialog">
									<div class="modal-content" style="background-color: #9BDDFF">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title" style="color: black;">Sign Up</h4>
										</div>
										<div class="modal-body">
											<form class="form-default">
												<div class="form-group">
													<label for="inputusername" style="color: black;">UserName</label>
													<input class="form-control" style="color: black;" type="text" name="" placeholder="Your UserName">
												</div>
												<div class="form-group">
													<label for="inputpasswork" style="color: black;">PassWord</label>
													<input class="form-control" style="color: black;" type="password" name="" placeholder="Your password">
												</div>
												<div class="form-group">
													<label for="inputpasswork" style="color: black;">Rety PassWord</label>
													<input class="form-control" style="color: black;" type="password" name="" placeholder="Rety Your password">
												</div>
												<div class="form-group">
													<label for="inputpasswork" style="color: black;">Choose One:</label>
													<select class="form-control">
														<option>Male</option>
														<option>Female</option>
													</select>
												</div>
												<div class="form-group">
													<label for="inputpasswork" style="color: black;">Phone Number</label>
													<input class="form-control" style="color: black;" type="number" name="" placeholder="Your Phone Number">
												</div>
												<div class="form-group">
													<label for="inputpasswork" style="color: black;">Email</label>
													<input class="form-control" style="color: black;" type="text" name="" placeholder="Your Email">
												</div>
												<div class="checkbox">
													<span style="color: black;"><label><input type="checkbox" name="">I have and accept policy</label></span><span><a style="color: black;" href="https://www.facebook.com/policies">The policy</a></span>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<div class="form-group">
				    						<button type="submit" style="color: black;" class="btn btn-default" data-dismiss="modal">Sign Up</button>
				      						<button type="submit" style="color: black;" class="btn btn-default" data-dismiss="modal">Sign in with Facebook</button>
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
		<div id="forum1" class="col-md-9">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th><h5>word</h5></th>
						<th><h5>Transcript</h5></th>
						<th><h5>Meaning</h5></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>after</td>
						<td>/ˈɑːftər /</td>
						<td>sau</td>
					</tr>
					<tr>
						<td>again</td>
						<td>/əˈgeɪn/ /</td>
						<td>lại, một lần nữa</td>
					</tr>
					<tr>
						<td>age</td>
						<td>/eɪdʒ/</td>
						<td>tuổi</td>
					</tr>
					<tr>
						<td>ago</td>
						<td>/əˈgəʊ//</td>
						<td>trước đây, về trước</td>
					</tr>
					<tr>
						<td>agree</td>
						<td>/əˈgriː/ </td>
						<td>đồng ý</td>
					</tr>
					<tr>
						<td>air</td>
						<td>/eər / /</td>
						<td>không khí, không trung</td>
					</tr>
					<tr>
						<td>all</td>
						<td>/ɔːl/</td>
						<td>tất cả, toàn bộ</td>
					</tr>
					<tr>
						<td>alone</td>
						<td>//əˈləʊn/ /</td>
						<td>một mình</td>
					</tr>
					<tr>
						<td>along</td>
						<td>/əˈlɒŋ/ </td>
						<td>dọc theo</td>
					</tr>
					<tr>
						<td>already</td>
						<td>/ɔːlˈred.i/</td>
						<td>đã, rồi</td>
					</tr>

				</tbody>
			</table>
			<div class="form-group" style="text-align: right;padding-top:10px;padding-bottom: 10px">
				<a href="Vocabularys.jsp" class="btn btn-default pull-left" role="button">Back</a>
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