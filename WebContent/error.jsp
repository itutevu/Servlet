<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
  	<script>
	
</script>
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
      			<a class="navbar-brand" style="color: white; width: 132px;font-size: 20px;" href="#">HOME</a>
    		</div>
    		<div>
      			<div class="collapse navbar-collapse" id="myNavbar">
        			<ul class="nav navbar-nav">
			          	<li><a style="color: white; width: 132px;font-size: 20px;" href="register.jsp" class="btn">Register</a></li>
				        <li><a style="color: white; width: 81px;font-size: 20px;" href="#FAQ" class="btn">FAQ</a></li>
				        <li><a style="color: white; width: 132px;font-size: 20px;" href="#Calendar" class="btn">Calendar</a></li>
				        <li class="dropdown"><a style="color: white; width: 132px;font-size: 18px;" class="dropdown-toggle" data-toggle="dropdown" href="#">Online Test<span class="caret"></span></a>
            				<ul style="color: white;" class="dropdown-menu">
              					<li><a href="#Toeic 250-450" class="btn">Toeic 250-450</a></li>
              					<li><a href="#Toeic 450-650" class="btn">Toeic 450-650</a></li>
              					<li><a href="#Toeic 650-950" class="btn">Toeic 650-950</a></li>
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
	<div class="row">
		<div class="col-md-7 col-md-offset-3" style="background-color: #F2F2F2; border:1px solid blue; margin-left: 21%;">
			<div class="custom1">
				<strong><h4 style="color: blue">Message from forum</h4></strong>
			</div>
			<div class="row">
			<div style="background-color: #F2F2F2;border:1px solid blue">
			<div class="custom2">
				<div>
					<%
					String username=(String) session.getAttribute("user");
					if(username==null) username="";
					out.print("<p>Your username is wrong : <span style='color:red'>"+username+"</span><br>");
					out.print("<span>if you dont have Account? Please  <a href=\"register.jsp\" >click here</a></span>");
					%>
					<h5 style="margin-left: 10px;">You have entered an invalid username or password. Please enter the correct details and try again. Don't forget that the password is case sensitive. Forgotten your password? Click here!</h5>
				</div>
			</div></br>
			</div>
			<div class="custom1">
				<strong><h4 style="color: blue;margin-left: 10px;">Try to Login</h4></strong>
			</div>
		</div>
	</div>
		</div>
	</div>
	
</div>
</body>
</html>