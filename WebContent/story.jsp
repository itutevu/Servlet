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
					<h1 class="panel-title"><img src="story.png" height="38" width="38">ENGLISH STORY </h1>
				</div>
				<div class="panel-body">
					<div class="panel">
						



						<div class="comment_bai_hoc clear">
						    <div class="hc_box lng_box">         
							    <div class="yellow_title_bottom"></div>
					        	   <div class="lng_notes green "></div>
					            
						
					                    <ul class="ptl_content">
					                    	                <li>
					                            <div class="lng_img ptl_img"><a title="Clever student" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3911-clever-student.jsp"><img src="https://noidung.tienganh123.com/file/baihoc/joke/bai223/C9236AC1.jpg"></a></div>
					                            <div class="lng_right  ptl_right">
					                                <div class="lng_right_top">
					                                    <table width="100%"><tbody><tr height="77" valign="middle"><td>
					                                    <div class="lng_right_tit"><a title="Clever student" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3911-clever-student.jsp">Clever student</a></div>
					                                    <div class="lng_right_content">
					                                    Học sinh khôn ngoan
					                                    </div>
					                                    </td></tr></tbody></table>
					                                </div>
					                                <div class="lng_r_info ptl_r_info">
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span>
					                                        <span>20823</span>
					                                    </div>
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span>
					                                        <span>1282</span>
					                                    </div>
					                                </div>
					                            </div>
					                        </li>
					                        
					                        <li>
					                            <div class="lng_img ptl_img"><a title="Clever Driver" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3870-clever-driver.jsp"><img src="https://noidung.tienganh123.com/file/baihoc/joke/bai222/index.jpg"></a></div>
					                            <div class="lng_right  ptl_right">
					                                <div class="lng_right_top">
					                                    <table width="100%"><tbody><tr height="77" valign="middle"><td>
					                                    <div class="lng_right_tit"><a title="Clever Driver" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3870-clever-driver.jsp">Clever Driver</a></div>
					                                    <div class="lng_right_content">
					                                    Ông tài xế khôn ngoan
					                                    </div>
					                                    </td></tr></tbody></table>
					                                </div>
					                                <div class="lng_r_info ptl_r_info">
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span>
					                                        <span>21097</span>
					                                    </div>
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span>
					                                        <span>1296</span>
					                                    </div>
					                                </div>
					                            </div>
					                        </li>
					                        
					                        <li>
					                            <div class="lng_img ptl_img"><a title="Annoying Dog" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3846-annoying-dog.jsp"><img src="https://noidung.tienganh123.com/file/baihoc/joke/bai221/th_DogStare.gif"></a></div>
					                            <div class="lng_right  ptl_right">
					                                <div class="lng_right_top">
					                                    <table width="100%"><tbody><tr height="77" valign="middle"><td>
					                                    <div class="lng_right_tit"><a title="Annoying Dog" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3846-annoying-dog.jsp">Annoying Dog</a></div>
					                                    <div class="lng_right_content">
					                                    Con chó phiền nhiễu
					                                    </div>
					                                    </td></tr></tbody></table>
					                                </div>
					                                <div class="lng_r_info ptl_r_info">
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span>
					                                        <span>33459</span>
					                                    </div>
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span>
					                                        <span>1605</span>
					                                    </div>
					                                </div>
					                            </div>
					                        </li>
					                        
					                        <li>
					                            <div class="lng_img ptl_img"><a title="Conjugation" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3811-conjugation.jsp"><img src="https://noidung.tienganh123.com/file/baihoc/joke/bai220/bai220.jpg"></a></div>
					                            <div class="lng_right  ptl_right">
					                                <div class="lng_right_top">
					                                    <table width="100%"><tbody><tr height="77" valign="middle"><td>
					                                    <div class="lng_right_tit"><a title="Conjugation" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3811-conjugation.jsp">Conjugation</a></div>
					                                    <div class="lng_right_content">
					                                    Chia động từ
					                                    </div>
					                                    </td></tr></tbody></table>
					                                </div>
					                                <div class="lng_r_info ptl_r_info">
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span>
					                                        <span>22906</span>
					                                    </div>
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span>
					                                        <span>1125</span>
					                                    </div>
					                                </div>
					                            </div>
					                        </li>
					                        
					                        <li>
					                            <div class="lng_img ptl_img"><a title="Honesty" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3608-honesty.jsp"><img src="https://noidung.tienganh123.com/file/baihoc/joke/bai219/late4school.jpg"></a></div>
					                            <div class="lng_right  ptl_right">
					                                <div class="lng_right_top">
					                                    <table width="100%"><tbody><tr height="77" valign="middle"><td>
					                                    <div class="lng_right_tit"><a title="Honesty" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3608-honesty.jsp">Honesty</a></div>
					                                    <div class="lng_right_content">
					                                    Trung thực
					                                    </div>
					                                    </td></tr></tbody></table>
					                                </div>
					                                <div class="lng_r_info ptl_r_info">
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span>
					                                        <span>37672</span>
					                                    </div>
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span>
					                                        <span>1329</span>
					                                    </div>
					                                </div>
					                            </div>
					                        </li>
					                        
					                        <li>
					                            <div class="lng_img ptl_img"><a title="Fishing" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3457-fishing.jsp"><img src="https://noidung.tienganh123.com/file/baihoc/joke/bai217/217.gif"></a></div>
					                            <div class="lng_right  ptl_right">
					                                <div class="lng_right_top">
					                                    <table width="100%"><tbody><tr height="77" valign="middle"><td>
					                                    <div class="lng_right_tit"><a title="Fishing" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3457-fishing.jsp">Fishing</a></div>
					                                    <div class="lng_right_content">
					                                    Đi câu
					                                    </div>
					                                    </td></tr></tbody></table>
					                                </div>
					                                <div class="lng_r_info ptl_r_info">
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span>
					                                        <span>46948</span>
					                                    </div>
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span>
					                                        <span>1442</span>
					                                    </div>
					                                </div>
					                            </div>
					                        </li>
					                        
					                        <li>
					                            <div class="lng_img ptl_img"><a title="Two Martians" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3406-two-martians.jsp"><img src="https://noidung.tienganh123.com/file/baihoc/joke/bai216/216.jpg"></a></div>
					                            <div class="lng_right  ptl_right">
					                                <div class="lng_right_top">
					                                    <table width="100%"><tbody><tr height="77" valign="middle"><td>
					                                    <div class="lng_right_tit"><a title="Two Martians" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3406-two-martians.jsp">Two Martians</a></div>
					                                    <div class="lng_right_content">
					                                    Hai người sao hỏa
					                                    </div>
					                                    </td></tr></tbody></table>
					                                </div>
					                                <div class="lng_r_info ptl_r_info">
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span>
					                                        <span>27431</span>
					                                    </div>
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span>
					                                        <span>1145</span>
					                                    </div>
					                                </div>
					                            </div>
					                        </li>
					                        
					                        <li>
					                            <div class="lng_img ptl_img"><a title="Little Johnny Boy" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3274-little -johnny-boy.jsp"><img src="https://noidung.tienganh123.com/file/baihoc/joke/bai215/215.png"></a></div>
					                            <div class="lng_right  ptl_right">
					                                <div class="lng_right_top">
					                                    <table width="100%"><tbody><tr height="77" valign="middle"><td>
					                                    <div class="lng_right_tit"><a title="Little Johnny Boy" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3274-little -johnny-boy.jsp">Little Johnny Boy</a></div>
					                                    <div class="lng_right_content">
					                                    Cậu bé Jonny
					                                    </div>
					                                    </td></tr></tbody></table>
					                                </div>
					                                <div class="lng_r_info ptl_r_info">
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span>
					                                        <span>28138</span>
					                                    </div>
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span>
					                                        <span>1230</span>
					                                    </div>
					                                </div>
					                            </div>
					                        </li>
					                        
					                        <li>
					                            <div class="lng_img ptl_img"><a title="Tired" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3235-tired.jsp"><img src="https://noidung.tienganh123.com/file/baihoc/joke/bai214/214.jpg"></a></div>
					                            <div class="lng_right  ptl_right">
					                                <div class="lng_right_top">
					                                    <table width="100%"><tbody><tr height="77" valign="middle"><td>
					                                    <div class="lng_right_tit"><a title="Tired" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3235-tired.jsp">Tired</a></div>
					                                    <div class="lng_right_content">
					                                    Mệt mỏi
					                                    </div>
					                                    </td></tr></tbody></table>
					                                </div>
					                                <div class="lng_r_info ptl_r_info">
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span>
					                                        <span>32260</span>
					                                    </div>
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span>
					                                        <span>1166</span>
					                                    </div>
					                                </div>
					                            </div>
					                        </li>
					                        
					                        <li>
					                            <div class="lng_img ptl_img"><a title="Why worry?" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3119-why-worry.jsp"><img src="https://noidung.tienganh123.com/file/baihoc/joke/bai213/happy.jpg"></a></div>
					                            <div class="lng_right  ptl_right">
					                                <div class="lng_right_top">
					                                    <table width="100%"><tbody><tr height="77" valign="middle"><td>
					                                    <div class="lng_right_tit"><a title="Why worry?" href="https://www.tienganh123.com/hoc-tieng-anh-qua-truyen-cuoi/3119-why-worry.jsp">Why worry?</a></div>
					                                    <div class="lng_right_content">
					                                    Tại sao phải lo lắng?
					                                    </div>
					                                    </td></tr></tbody></table>
					                                </div>
					                                <div class="lng_r_info ptl_r_info">
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span>
					                                        <span>40561</span>
					                                    </div>
					                                    <div class="lng_r_info_item">
					                                        <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span>
					                                        <span>1423</span>
					                                    </div>
					                                </div>
					                            </div>
					                        </li>                      
					                    </ul>
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
</body>
</html>