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
		footer {
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
              					<li><a href="Toeic-Test11.jsp" class="btn">Toeic 250-450</a></li>
              					<li><a href="Toeic-Test12.jsp" class="btn">Toeic 450-650</a></li>
              					<li><a href="Toeic-Test2.jsp" class="btn">Toeic 650-950</a></li>
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
													<a style="margin-left: 70px" href="studyprogress.jsp">Study Progress</a></h5>
													<h5 style="margin-left:0px;"><a href="changeinfo.jsp">Post</a><a style="margin-left: 110px" href="HOME.jsp">File Manager</a></h5>
													<h5 style="margin-left:0px;"><a href="changeinfo.jsp">Friend List</a><a style="margin-left: 70px" href="HOME.jsp">Black List</a></h5>
													<h5 style="margin-left:0px;"><a href="schedule.jsp">Schedules</a></h5>
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
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title"><img src="filemanager.png" height="38" width="38"> FILE MANAGER</h1>
				</div>
				<div class="panel-body">
					<div class="panel">
						
						
  					<div class="panel-group">
			      

			            <div class="panel-body">         
			            	<ul class="nav nav-tabs">
				                <li class="active"><a data-toggle="tab" href="#home"><strong>My File</strong></a></li>
				                <li><a data-toggle="tab" href="#menu1"><strong>Receive File</strong></a></li>
				                <li><a data-toggle="tab" href="#menu2"><strong>Upload File</strong></a></li>
				            </ul>
			            	<div class="tab-content">
			                <div id="home" class="tab-pane fade in active">
			                 	<table class="table table-bordered">
			                    <thead><br/>
			                      	<tr>
			                        <th>Title</th>                        
			                        <th>Type</th>
			                        <th>Size</th>
			                        <th>Date</th>
			                     	</tr>
			                   	</thead>
			                    <tbody>
			                     	<tr>
				                        <td>
				                          <form>
				                            <div class="checkbox">
				                              <label><input type="checkbox" value=""><a href="Xem Tai Lieu.jsp">english grammar for starter</a> &nbsp;&nbsp; 	                              
				                              <a href ="filemanager.png"><span class="glyphicon glyphicon-save" download></span> </a> &nbsp;&nbsp;
				                              <a href ="#"><span class="glyphicon glyphicon-remove"></span></a> &nbsp;&nbsp;  
				                              <span class="glyphicon glyphicon-share-alt" data-toggle="modal" data-target="#chonchiase"></span></label>
				                            </div>
				                          </form>
				                        </td>
				                        <td>PDF</td>
				                        <td>2.1 Mb</td>
				                        <td>08/03/2015</td>
				                  
			                    	</tr>
			                     	<tr>
				                        <td>
				                         	<form>
				                            <div class="checkbox">
				                             	<label><input type="checkbox" value=""><a href="#">Advanved Listenning</a>&nbsp;&nbsp; 
				                             	<a href ="#"><span class="glyphicon glyphicon-save"></span></a> &nbsp;&nbsp; 
				                             	<a href ="#"><span class="glyphicon glyphicon-remove"></span></a> &nbsp;&nbsp; 
				                             	<span class="glyphicon glyphicon-share-alt" data-toggle="modal" data-target="#chonchiase"></span></a></label>
				                            </div>
				                          	</form>
				                        </td>
				                        <td>MP4</td>
				                        <td>65 Mb</td>
				                        <td>15/08/2016</td>
				                   
				                    </tr>
				                    <tr>
				                        <td>
				                         	<form>
				                            <div class="checkbox">
				                            	<label><input type="checkbox" value="">
				                            	<a href="#">Toeic for anyone &nbsp;&nbsp;</a>
				                            	<a href ="#"><span class="glyphicon glyphicon-save"></span></a> &nbsp;&nbsp; 
				                            	<a href ="#"><span class="glyphicon glyphicon-remove"></span></a> &nbsp;&nbsp; 
				                           		<span class="glyphicon glyphicon-share-alt" data-toggle="modal" data-target="#chonchiase"></span>
				                           		<span class="glyphicon glyphicon-share-remove" data-toggle="modal" data-target="#chonchiase"></span>
				                           		</label>
				                            </div>
				                          </form>
				                        </td>
				                        <td>PDF</td>
				                        <td>3.7 Mb</td>
				                        <td>11/01/2016</td>
				                       
				                    </tr>
			                    </tbody>
			                	</table>			                   
			                </div>
			                <div id="menu1" class="tab-pane fade">
			                 	<table class="table table-bordered">
			                    <thead><br/>
			                      	<tr>
				                        <th>Title</th>
				                        <th>Type</th>
				                        <th>Size</th>
				                        <th>Share</th>
			                      	</tr>
			                    </thead>
			                    <tbody>
			                      	<tr>
			                        	<td>
			                        		<form>				                    
						                     	<label><a href="Xem Tai Lieu.jsp">Advanved Listenning</a>&nbsp;&nbsp; <a href ="#"><span class="glyphicon glyphicon-save"></span></a></label>
						                   		 </div>
						                   	</form>
						                </td>
				                        <td>Docx</td>
				                        <td>567 Kb</td>
				                        <td>Shared by PPAP</td>
			                    	</tr>
			                     	<tr>
			                       		<td>
			                       			<form>			                   
							                    <label><a href="#">Started Toeic</a>&nbsp;&nbsp; <a href ="#"><span class="glyphicon glyphicon-save"></span></a></label>
											</form>
										</td>
				                        <td>Jpeg</td>
				                        <td>2 Mb</td>
				                        <td>Shared by TimCook</td>
				                    </tr>
							        <tr>
			                      		<td>
			                      	  		<form>
			                    				<label><a href="#">listenning for starter</a>&nbsp;&nbsp; <a href ="#"><span class="glyphicon glyphicon-save"></span></a></label>
			                    			</form>
			                    		</td>
			                        <td>PPT</td>
			                        <td>978 Kb</td>
			                        <td>Shared by Admin</td>
			                      </tr>
			                    </tbody>
			               		</table>			                 	
			                </div>
			                <div id="menu2" class="tab-pane fade">
			                    <form role="form">
			                    <div class="form-group">
			                        <br/>
			                    	<label for="nhaptuurl">From URL</label>
			                      	<input type="url" class="form-control" id="nhaptuurl" placeholder="Enter url here">
			                    </div>			                    
			                    <div class="form-group">
			                      <label for="upfile">Upload from computer</label>
			                      <input type="file" id="upfile">
			                    </div>
			                    	<br/>
			                  	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#uploadfile">Upload</button>
				                	<div class="modal fade" id="uploadfile" role="dialog">
					                    <div class="modal-dialog modal-lg">
					               			<div class="modal-content">					                
			                  					<div class="modal-body">
			                  						<div class="alert alert-success">
			                       						<strong>Success!</strong> Uploaded!
d			                    					</div>			                   
			                 					</div>
				                 				<div class="modal-footer">
									                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
									            </div>
									        </div>
								        </div>
								    </div>
								</div>
								</form>
							</div>
						</div>
					</div>
					</div>
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
<footer>								
	<div id="copyright">
		 Nhóm 13 lớp Lập trình Web - Khóa K14 Khoa Công Nghệ Thông Tin - ĐH Sư Phạm Kỹ Thuật Tp.HCM <br>
		  • Địa chỉ: 1 Võ Văn Ngân quận Thủ Đức TP.HCM • 
	</div>			
</footer>
</body>
</html>