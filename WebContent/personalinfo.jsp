<%@ page language ="java" import="java.sql.*"%>
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
	<link rel="stylesheet" type="text/css" href="loginsucess.css">
  	<script src="jquery-3.1.1.min.js"></script>
  	<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
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
			<span class="h5">Hello QuangVu <a href="https://www.google.com.vn/?gfe_rd=cr&ei=XNzoV8OMPNLbugSXmojACA&gws_rd=ssl"> Edit</a></span>
			<button class="btn btn-primary btn-sm pull-right" data-target="#signModal" data-toggle="modal">Sign Out</button>
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
    	</div>
  	</div>
	</div></br>
	<div id="forumchung" class="col-md-12">
		<div id="forum1" class="col-md-9">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title">Personal</h1>
				</div>
				<div class="panel-body">
					<ul class="list-group">
						<li>
							<div class="form-group">
								<label for="inputName" class="col-sm-1 control-lable">First Name: </label>
								<div class="col-sm-10">
									<input type="text" class="form-control" disabled="disabled" placeholder="Richard">
								</div>
							</div>
						</li></br>
						<li>
							<div class="form-group">
								<label for="inputName" class="col-sm-1 control-lable">Last Name: </label>
								<div class="col-sm-10">
									<input type="text" class="form-control" disabled="disabled" placeholder="Scott">
								</div>
							</div>
						</li></br>
						<li>
							<div class="form-group">
								<label for="inputName" class="col-sm-1 control-lable">Address: </label>
								<div class="col-sm-10">
									<input type="text" class="form-control" disabled="disabled" placeholder="102-NewYork-USS-World!!!">
								</div>
							</div>
						</li></br>
						<li>
							<div class="form-group">
								<label for="inputName" class="col-sm-1 control-lable">City: </label>
								<div class="col-sm-10">
									<input type="text" class="form-control" disabled="disabled" placeholder="NewYork">
								</div>
							</div>
						</li></br>
						<li>
							<div class="form-group">
								<label for="inputName" class="col-sm-1 control-lable">Zip: </label>
								<div class="col-sm-10">
									<input type="text" class="form-control" disabled="disabled" placeholder="90210">
								</div>
							</div>
						</li></br>
						<li>
							<div class="form-group">
								<label for="inputName" class="col-sm-1 control-lable">Address: </label>
								<div class="col-sm-10">
									<select class="form-control">
										<option>USA</option>
										<option>VietNam</option>
										<option>China</option>
										<option>Japan</option>
										<option>Thailand</option>
										<option>German</option>
										<option>Canada</option>
										<option>Brazil</option>
									</select>
								</div>
							</div>
						</li></br>
						<li>
							<div class="form-group">
								<label for="inputName" class="col-sm-1 control-lable">Phone Number: </label>
								<div class="col-sm-10">
									<input type="text" class="form-control" disabled="disabled" placeholder="+8421312312312">
								</div>
							</div>
						</li></br>
						<li>
							<div class="form-group">
								<label for="inputName" class="col-sm-1 control-lable">Email: </label>
								<div class="col-sm-10">
									<input type="text" class="form-control" disabled="disabled" placeholder="Richard***@gmail.com">
								</div>
							</div>
						</li></br>
					</ul>
				</div>
			</div>
			<center>
			<div class="form-group">
				<a href="changeinfo.jsp" class="btn btn-default">Change</a>
				<button class="btn btn-primary">Back</button>
			</div>
			</center>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title">Learning</h1>
				</div>
				<div class="panel-body">
					<ul class="list-group">
						<li>
							<div class="form-group">
								<label for="inputName" class="col-sm-1 control-lable">Homework counts: </label>
								<div class="col-sm-10">
									<div class="input-group">
  										<input type="text" class="form-control" placeholder="11" aria-describedby="basic-addon2" disabled="disabled">
  										<span class="input-group-addon" id="basic-addon2">Times</span>
									</div>
								</div>
							</div>
						</li></br>
						<li>
							<div class="form-group">
								<label for="inputName" class="col-sm-1 control-lable">Avg Time </label>
								<div class="col-sm-10">
									<div class="input-group">
  										<input type="text" class="form-control" placeholder="11" aria-describedby="basic-addon2" disabled="disabled">
  										<span class="input-group-addon" id="basic-addon2">Times</span>
									</div>
								</div>
							</div>
						</li></br>
					</ul>
				</div>
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
</body>
</html>