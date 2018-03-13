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
				        <li><a style="color: white; width: 81px;font-size: 20px;" href="FAQ.jsp" class="btn">FAQ</a></li>
				        <li><a style="color: white; width: 132px;font-size: 20px;" href="schedule.jsp" class="btn">Calendar</a></li>


				        <li class="dropdown"><a style="color: white; width: 150px;font-size: 20px;" class="dropdown-toggle" data-toggle="dropdown" href="#">Online Test<span class="caret"></span></a>
            				<ul style="color: white;" class="dropdown-menu">
              					<li><a href="#Toeic 250-450" class="btn">Toeic 250-450</a></li>
              					<li><a href="#Toeic 450-650" class="btn">Toeic 450-650</a></li>
              					<li><a href="#Toeic 650-950" class="btn">Toeic 650-950</a></li>
            				</ul>
          				</li>
          				
          				<li class="dropdown"><a style="color: white; width: 132px;font-size: 20px; margin-left: 437px" class="dropdown-toggle" data-toggle="dropdown" href="#">QuangVu<span class="caret"></span></a>
            				<ul style="color: white;margin-left: 437px; width: 270px;" class="dropdown-menu">
								<div id="ttcn">
									<div class="" style="background-color: #CCCCCC;  width: 100%;  height: 100%;">
										<div class="panel-body">

											<div class="menuColumns secondaryContent">
												<img src="1475230513_malecostume.png" width="120" height="120" alt="AnhCaNhan">
													<h4><strong>Name: </strong>QuangVu</h4>
													<h5 style="margin-left:0px;">Profile <a href="changeinfo.jsp"><img src="1475233554_pencil.png" alt="ChinhSua" width="20" height="20"></a>
													<a style="margin-left: 70px" href="HOME.jsp">Study Progress</a></h5>
													<h5 style="margin-left:0px;"><a href="changeinfo.jsp">Post</a><a style="margin-left: 110px" href="HOME.jsp">File Manager</a></h5>
													<h5 style="margin-left:0px;"><a href="changeinfo.jsp">Friend List</a><a style="margin-left: 70px" href="HOME.jsp">Black List</a></h5>
													<h5 style="margin-left:0px;"><a href="changeinfo.jsp">Schedules</a></h5>
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
		<div id="forum1" class="col-md-9">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title"><img src="register.png" height="38" width="38"> REGISTRATION</h1>
				</div>
				<div class="panel-body">
					<div class="panel">				
						<div>
							<label for="regusername" style="width: 248px;">User Name:</label>
							<input type="text" name="username" maxlength="30" value tabindex="1" autocomplete="off" id="iusername" class="primary textbox" style="width: 50%;" onblur="kiemtra()" required>
							<span style="color: red;" id="noteusername"></span>
							<p class="description" style="width: auto; margin-left: 248px;">
								"Please enter the name by which you would like to log-in and be known on this site."
							</p>
						</div>
						<div>
							<label for="regpassword" style="width: 248px;">Password:</label>
							<input id="ipass1" type="password" name="password" maxlength="50" value tabindex="1" autocomplete="off" class="primary textbox" style="width: 50%;" required>
							<label for="regpassword" style="width: 248px;">Confirm Password:</label>
							<input id="ipass2" type="password" name="password" maxlength="50" value tabindex="1" autocomplete="off" class="primary textbox" style="width: 50%;" required>
							<span style="color: red;" id="notepassword"></span>
							<p class="description" style="width: auto; margin-left: 248px;">
								"Please enter a password. Note: passwords are distinguished by the word 'normally' and 'UNITED'."
							</p>
						</div>
						<div>
							<label for="regemail" style="width: 248px;">Email:</label>
							<input id="iemail1" type="email" name="email" maxlength="50" value tabindex="1" autocomplete="off" class="primary textbox" style="width: 50%;" required>
							<label for="regemail" style="width: 248px;">Confirm Email:</label>
							<input id="iemail2" type="email" name="email" maxlength="50" value tabindex="1" autocomplete="off" class="primary textbox" style="width: 50%;" required>
							<span style="color: red;" id="noteemail"></span>
							<p class="description" style="width: auto; margin-left: 248px;">
								"Please enter the email address you are using"
								<p style="color: red;width: auto; margin-left: 248px;">We will send the activation link in this email.</p>
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1" >
							<div class="custom2">
								<div>
									<h4>Additional Information</h4>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1" >
							<div class="custom2" >
								<div>
									<label for="regname" style="width: 248px;">Your Full Name:</label>
									<input type="text" name="name" maxlength="50" value tabindex="1" autocomplete="off" id="ifullname" class="primary textbox" style="width: 50%;" required>
									<p class="description" style="width: auto; margin-left: 248px;">
										"What's your name?"
									</p>
								</div>
								<div>
									<label for="resex" style="width: 248px;">Sex:</label>
									<select>
										<option>Male</option>
										<option>Female</option>
									</select>
									<p class="description" style="width: auto; margin-left: 248px;">
										"You are male or female?"
									</p>
								</div>
								<div>
									<label for="regaddress" style="width: 248px;">Your address:</label>
									<input type="text" name="address" maxlength="60" value tabindex="1" autocomplete="off" id="iaddress" class="primary textbox" style="width: 50%;" required>
									<p class="description" style="width: auto; margin-left: 248px;">
										"what's your address?"
									</p>
								</div>
								<div>
									<label for="regbirthday" style="width: 248px;">Your Birthday:</label>
										Month: 
										<select name="month" id="bd_month" tabindex="1">
										<option value="-1"></option>
										<option value="01">Tháng 1</option>
										<option value="02">Tháng 2</option>
										<option value="03">Tháng 3</option>
										<option value="04">Tháng 4</option>
										<option value="05">Tháng 5</option>
										<option value="06">Tháng 6</option>
										<option value="07">Tháng 7</option>
										<option value="08">Tháng 8</option>
										<option value="09">Tháng 9</option>
										<option value="10">Tháng 10</option>
										<option value="11">Tháng 11</option>
										<option value="12">Tháng 12</option>
										</select>
										Date: 
										<select name="day" id="bd_day" tabindex="1">
										<option value="-1"></option>
										<option value="01">1</option>
										<option value="02">2</option>
										<option value="03">3</option>
										<option value="04">4</option>
										<option value="05">5</option>
										<option value="06">6</option>
										<option value="07">7</option>
										<option value="08">8</option>
										<option value="09">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>
										</select>
										Year: 
										<input type="text" class="textbox numeric" name="year" value="" size="4" maxlength="4" id="iyear" tabindex="1" required>
									<p class="description" style="width: auto; margin-left: 248px;">
										"what's your birthday?"
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1" >
							<div class="custom2">
								<div>
									<h4>Additional Information(Not required)</h4>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-10 col-md-offset-1" >
							<div class="custom2">
								<div>
									<label for="regPresenter" style="width: 248px;">Presenter:</label>
									<input type="text" name="Presenter" maxlength="30" value tabindex="1" autocomplete="off" id="iregPresenter" class="primary textbox" style="width: 50%;">
									<p class="description" style="width: auto; margin-left: 248px;">
										"which member was to introduce you to the Forum? Otherwise please leave blank."
									</p>
								</div>
								<div>
									<label for="regPresenter" style="width: 248px;">Receive email:</label>
									<input type="checkbox" name="options[adminemail]" value="1" id="icb_adminemail" tabindex="1" checked="checked">Get information from the executive forum</br>
									<input style="margin-left: 252px;" type="checkbox" name="options[adminemail]" value="1" id="cb_adminemail" tabindex="1" checked="checked">Receive information from other members
								</div>
								<div>
									<label for="regphone" style="width: 248px;">Phone number:</label>
									<input type="number" name="phone" maxlength="30" value tabindex="1" autocomplete="off" id="iphone" class="primary textbox" style="width: 50%;" required>
								</div>
							</div>
						</div>
					</div></br>
				</br>
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