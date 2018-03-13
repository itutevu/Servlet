<%@ page language ="java" import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<title>Toeic-Test2</title>
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
          					<button id="sty-btn" class="btn btn-primary btn-sm pull-right" data-target="#signModal" data-toggle="modal">LOG OUT</button>
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
													<label for="inputpasswork" style="color: black;">Retry PassWord</label>
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
			<div class="panel-heading"><strong><center><h2>Practice Full Test Toeic Listening, Listenning 10</h2></center></strong></div>
			<div class="row">
				<h3>Passage </h3>
	    			<center>
	        			<audio controls>
	        				<source src="http://www.w3schools.com/tags/horse.mp3" type="audio/mp3">
	       
	      				</audio>
	    			</center>
	            <div class="col-md-9">
	            <form>
	        		<b>1.why does the writer include information about the Cherokee language?</b>
	            	<div class="radio">
	            		<label><input type="radio" name="optradio">A.To show how simple, traditional cultures can have complicated grammar structures </label>
	        		</div>
	        		<div class="radio">
	            		<label><input type="radio" name="optradio">B.To show how English grammar differs from Cherokee grammar </label>
	        		</div>
	          		<div class="radio">
	            		<label id="11"><input type="radio" name="optradio">C.To prove that complex grammar structures were invented by the Cherokees. </label>
	        		</div>
	        	</form>
	            <form>
	        		<b>2.What can be inferred about the slaves' pidgin language?</b>
	        		<div class="radio">
	          			<label><input type="radio" name="optradio">A.It contained complex grammar.  </label>
	        		</div>
	        		<div class="radio">
	          			<label><input type="radio" name="optradio">B.It was based on many different languages.  </label>
	        		</div>
	        		<div class="radio">
	          			<label><input type="radio" name="optradio">C.It was difficult to understand, even among slaves. </label>
	        		</div>
	        	</form>
	        	</div>
	            <div class="col-md-9">
	            	<form>
	        			<b>3.All the following sentences about Nicaraguan sign language are true EXCEPT</b>
	          			<div class="radio">
	            			<label><input type="radio" name="optradio">A.The language has been created since 1979.  </label>
	        			</div>
	        			<div class="radio">
	            			<label><input type="radio" name="optradio">B.The language is based on speech and lip reading.  </label>
	        			</div>
	        			<div class="radio">
	            			<label><input type="radio" name="optradio">C.The language incorporates signs which children used at home.  </label>
	        			</div>
	        		</form>
	             	<form>
	        			<b>4.What can be inferred about the slaves' pidgin language?</b>
	        			<div class="radio">
	          				<label><input type="radio" name="optradio">A.It contained complex grammar.  </label>
	        			</div>
	        			<div class="radio">
	          				<label><input type="radio" name="optradio">B.It was based on many different languages.  </label>
	        			</div>
	        			<div class="radio ">
	          				<label id="14"><input type="radio" name="optradio">C.It was difficult to understand, even among slaves. </label>
	        			</div>
	        		</form>
	        		<form>
	        			<b>5.WCould you tell me your surname?</b>
	        			<div class="radio">
	          				<label><input type="radio" name="optradio">A.Would you like me to spell it? </label>
	        			</div>
	        			<div class="radio">
	          				<label><input type="radio" name="optradio">B.Do you like my family name?languages.  </label>
	        			</div>
	        			<div class="radio ">
	          				<label id="14"><input type="radio" name="optradio">C.It was difficult to understand, even among slaves. </label>
	        			</div>
	        		</form>
	        		<form>
	        			<b>6.This plant looks dead.</b>
	        			<div class="radio">
	          				<label><input type="radio" name="optradio">A.It's in the garden.  </label>
	        			</div>
	        			<div class="radio">
	          				<label><input type="radio" name="optradio">B.It only needs some water. </label>
	        			</div>
	        			<div class="radio ">
	          				<label id="14"><input type="radio" name="optradio">C.It's sleeping. </label>
	        			</div>
	        		</form>
	        		<form>
	        			<b>7.I hope it doesn't rain</b>
	        			<div class="radio">
	          				<label><input type="radio" name="optradio">A.Of course not.  </label>
	        			</div>
	        			<div class="radio">
	          				<label><input type="radio" name="optradio">B.Will it be wet?  </label>
	        			</div>
	        			<div class="radio ">
	          				<label id="14"><input type="radio" name="optradio">C.So do I. </label>
	        			</div>
	        		</form>
	        		<form>
	        			<b>8.Are you going to come inside soon?</b>
	        			<div class="radio">
	          				<label><input type="radio" name="optradio">A.For ever  </label>
	        			</div>
	        			<div class="radio">
	          				<label><input type="radio" name="optradio">B.Not long.</label>
	        			</div>
	        			<div class="radio ">
	          				<label id="14"><input type="radio" name="optradio">C.In a minute. </label>
	        			</div>
	        		</form>
	        		<form>
	        			<b>9.Who gave you this book, Lucy?</b>
	        			<div class="radio">
	          				<label><input type="radio" name="optradio">A.I bought it..  </label>
	        			</div>
	        			<div class="radio">
	          				<label><input type="radio" name="optradio">B.For my birthday.  </label>
	        			</div>
	        			<div class="radio ">
	          				<label id="14"><input type="radio" name="optradio">C.My uncle was. </label>
	        			</div>
	        		</form>
	        		<form>
	        			<b>10.Shall we go out for pizza tonight?</b>
	        			<div class="radio">
	          				<label><input type="radio" name="optradio">A.I know that.  </label>
	        			</div>
	        			<div class="radio">
	          				<label><input type="radio" name="optradio">B.It's very good. </label>
	        			</div>
	        			<div class="radio ">
	          				<label id="14"><input type="radio" name="optradio">C.I'm too tired.</label>
	        			</div>
	        		</form>
	             
	            </div>
	        </div>
	        <div class="panel-body">
          		<button class="btn btn-default btn-sm pull-left" data-target="#testModal" data-toggle="modal">Submit</button></br>
          		<div class="modal" id="testModal" tabindex="-1">
            		<div class="modal-dialog">
              			<div class="modal-content">
                			<div class="modal-header">
                  				<button type="button" class="close" data-dismiss="modal">&times;</button>
                  			<div class="panel-default">
                    			<div class="panel-heading">
                      				<h1 class="panel-title">Detail</h1>
                    			</div>
                    		<div class="panel-body">
                      			<h1><I>Congratulation !</I></h1></br>
                      			<h2>You finish your test</h2>
                      			<h5>Your Score : 5 </h5>
                      			
                    		</div>
                  		</div>
                	</div>
                <div class="modal-footer">
                	<div id="btnToeic250-450">
                  		<div class="form-group">
                    		<a href="https://www.facebook.com/sharer/sharer.php?u=example.org" class="btn btn-default"><h5>Share on Facebook</h5></a>
                      			<button type="submit" class="btn btn-default" data-dismiss="modal">Close</button>
                		</div>
                	</div>
                </div>
            </div>
            </div>
          	</div></br>
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