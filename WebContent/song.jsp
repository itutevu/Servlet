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

	.lng_content li {
	width: 100%;
	float: left;
	padding: 15px 0;
	}
	.lng_img {
	float: left;
	border: 4px solid #fff;
	box-shadow: 0px 0px 3px #727272;
	margin: 0 12px 0 22px;
	}
	.lng_right {
	width: 535px;
	float: left;
	line-height: normal;
	}
	.lng_right_top {
	width: 100%;
	height: 78px;
	overflow: hidden;
	}

	.lng_r_info_item {
	float: left;
	margin-right: 20px;
	font-weight: normal;
	}
	img {
	border: none;
	}
	.lng_r_info_item img {
	vertical-align: middle;
	margin: 0 3px 0 1px;
	}
	.lng_right_tit {
	width: 100%;
	float: left;
	font-weight: bold;
	margin: 0px 0 5px;
	line-height: normal;
	}
	.lng_right_content {
	width: 100%;
	font-weight: normal;
	margin-bottom: 5px;
	float: left;
	line-height: normal;
	}
	.lng_right_tit a, .lng_right_tit2 a {
	color: #0081a1;
	}
	.lng_img img {
	width: 118px;
	height: 92px;
	}
	</style>
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
					<h1 class="panel-title"><img src="song.png" height="38" width="38"> ENGLISH SONG</h1>
				</div>
				<div class="panel-body">
					<div class="panel">
						<div class="bg_center">
								<div id="contents">
									<div class="containt_center_cen clear">
										<table border="0" cellspacing="0" cellpadding="0">
											<tbody>
												<tr>
													<td class="containt_center_cen_left" valign="top">
														<div class="comment_bai_hoc clear">
															<div class="hc_box lng_box">  
															 	<ul class="lng_content">			    
															    <li style="background: rgb(239, 248, 250);">
															     	<div class="lng_img"><a title="Let It Go" href="https://www.google.com.vn/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwjTjoKb8eHPAhWCr1QKHZG4BrwQFggZMAA&url=http%3A%2F%2Floidich.com%2Fld24104-LetItGo(OSTFrozen)-IdinaMenzel.jsp&usg=AFQjCNFJKHY9g-sQM0h679RDRrZq9xFFZA&bvm=bv.135974163,d.c2I"><img src="https://noidung.tienganh123.com/file/music/bai225/bai225.jpg"></a></div>
															    	<div class="lng_right">
																        <div class="lng_right_top">
																        	<table width="100%">
																            	<tbody><tr height="77" valign="middle">
																	             	<td><div class="lng_right_tit"><a title="Let It Go" href="https://www.google.com.vn/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwjTjoKb8eHPAhWCr1QKHZG4BrwQFggZMAA&url=http%3A%2F%2Floidich.com%2Fld24104-LetItGo(OSTFrozen)-IdinaMenzel.jsp&usg=AFQjCNFJKHY9g-sQM0h679RDRrZq9xFFZA&bvm=bv.135974163,d.c2I">Let It Go</a></div>
																	                <div class="lng_right_content">Let it go, let it go<br>
																						Cant hold you back anymore<br>
																						Let it go, let it go<br>
																						Turn my back and slam the door</div></td>
																		            </tr>
																	          	</tbody>
																	       	</table>
																        </div>
																        <div class="lng_r_info">
																          	<div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span> <span>181789</span> </div>
																         	<div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span> <span>6291</span> </div>
																        </div>
															    	</div>
															    </li>									    
															    <li>
															     	<div class="lng_img"><a title="Titanium" href="https://www.google.com.vn/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwj92v_V8eHPAhXKw1QKHe6hAUoQFggbMAA&url=http%3A%2F%2Floidich.com%2Fld22094-Titanium(ft.Sia)-DavidGuetta.jsp&usg=AFQjCNE6wc7M1PDmVc2UghesA_dKyEmiQQ"><img src="https://noidung.tienganh123.com/file/music/bai224/bai224.jpg"></a></div>
															     	<div class="lng_right">
																        <div class="lng_right_top">
																       		<table width="100%">
																	            <tbody><tr height="77" valign="middle">
																	              <td><div class="lng_right_tit"><a title="Titanium" href="https://www.tienganh123.com/hoc-tieng-anh-qua-bai-hat/11930-titanium.jsp">Titanium</a></div>
																	                <div class="lng_right_content">You shout it out <br>
																						But I can't hear a word you say</div></td>
																	            </tr>
																	         	</tbody>
																	        </table>
																        </div>
																        <div class="lng_r_info">
																          <div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span> <span>85536</span> </div>
																          <div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span> <span>1602</span> </div>
																        </div>
															      	</div>
															    </li>
															    
															    <li style="background: rgb(239, 248, 250);">
															     	<div class="lng_img"><a title="Let Me Go" href="englishsong.jsp"><img src="https://noidung.tienganh123.com/file/music/bai223/bai223.jpg"></a></div>
															    	<div class="lng_right">
																        <div class="lng_right_top">
																        	<table width="100%">
																	            <tbody><tr height="77" valign="middle">
																	              <td><div class="lng_right_tit"><a title="Let Me Go" href="englishsong.jsp">Let Me Go</a></div>
																	                <div class="lng_right_content">Love that once hung on the wall</div></td>
																	            </tr>
																	         	</tbody>
																	         </table>
																        </div>
																        <div class="lng_r_info">
																        	<div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span> <span>97330</span> </div>
																       	   <div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span> <span>1537</span> </div>
																        </div>
																    </div>
															    </li>
															    
															    <li>
															      <div class="lng_img"><a title="One More Night" href="https://www.tienganh123.com/hoc-tieng-anh-qua-bai-hat/11207-one-more-night.jsp"><img src="https://noidung.tienganh123.com/file/music/bai222/thump.jpg"></a></div>
															      <div class="lng_right">
															        <div class="lng_right_top">
															          <table width="100%">
															            <tbody><tr height="77" valign="middle">
															              <td><div class="lng_right_tit"><a title="One More Night" href="https://www.tienganh123.com/hoc-tieng-anh-qua-bai-hat/11207-one-more-night.jsp">One More Night</a></div>
															                <div class="lng_right_content">You and I go hard, at each other like we going to war<br>
																		You and I go rough, we keep throwing things and slamming the doors...</div></td>
															            </tr>
															          </tbody></table>
															        </div>
															        <div class="lng_r_info">
															          <div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span> <span>108355</span> </div>
															          <div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span> <span>1371</span> </div>
															        </div>
															      </div>
															    </li>
															    
															    <li style="background: rgb(239, 248, 250);">
															      <div class="lng_img"><a title="Counting Stars" href="https://www.tienganh123.com/hoc-tieng-anh-qua-bai-hat/10723-counting-stars.jsp"><img src="https://noidung.tienganh123.com/file/music/bai221/thump.jpg"></a></div>
															      <div class="lng_right">
															        <div class="lng_right_top">
															          <table width="100%">
															            <tbody><tr height="77" valign="middle">
															              <td><div class="lng_right_tit"><a title="Counting Stars" href="https://www.tienganh123.com/hoc-tieng-anh-qua-bai-hat/10723-counting-stars.jsp">Counting Stars</a></div>
															                <div class="lng_right_content">Lately, Ive been, Ive been losing sleep Dreaming about the things that we could be</div></td>
															            </tr>
															          </tbody></table>
															        </div>
															        <div class="lng_r_info">
															          <div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span> <span>101784</span> </div>
															          <div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span> <span>1226</span> </div>
															        </div>
															      </div>
															    </li>
															    
															    <li>
															      <div class="lng_img"><a title="Numb" href="https://www.tienganh123.com/hoc-tieng-anh-qua-bai-hat/10554-numb.jsp"><img src="https://noidung.tienganh123.com/file/music/bai220/thump.jpg"></a></div>
															      <div class="lng_right">
															        <div class="lng_right_top">
															          <table width="100%">
															            <tbody><tr height="77" valign="middle">
															              <td><div class="lng_right_tit"><a title="Numb" href="https://www.tienganh123.com/hoc-tieng-anh-qua-bai-hat/10554-numb.jsp">Numb</a></div>
															                <div class="lng_right_content">I'm tired of being what you want me to be<br>
																				Feeling so faithless, lost under the surface</div></td>
															            </tr>
															          </tbody></table>
															        </div>
															        <div class="lng_r_info">
															          <div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span> <span>68468</span> </div>
															          <div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span> <span>1007</span> </div>
															        </div>
															      </div>
															    </li>
															    
															    <li style="background: rgb(239, 248, 250);">
															      <div class="lng_img"><a title="Wake Me Up" href="https://www.tienganh123.com/hoc-tieng-anh-qua-bai-hat/10163-wake-me-up.jsp"><img src="https://noidung.tienganh123.com/file/music/bai219/thump.jpg"></a></div>
															      <div class="lng_right">
															        <div class="lng_right_top">
															          <table width="100%">
															            <tbody><tr height="77" valign="middle">
															              <td><div class="lng_right_tit"><a title="Wake Me Up" href="https://www.tienganh123.com/hoc-tieng-anh-qua-bai-hat/10163-wake-me-up.jsp">Wake Me Up</a></div>
															                <div class="lng_right_content">Feeling my way through the darkness<br>
																				Guided by a beating heart</div></td>
															            </tr>
															          </tbody></table>
															        </div>
															        <div class="lng_r_info">
															          <div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span> <span>153289</span> </div>
															          <div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span> <span>1331</span> </div>
															        </div>
															      </div>
															    </li>
															    
															    <li>
															      <div class="lng_img"><a title="As long as you love me" href="https://www.tienganh123.com/hoc-tieng-anh-qua-bai-hat/9853-as-long-as-you-love-me.jsp"><img src="https://noidung.tienganh123.com/file/music/bai218/thump.jpg"></a></div>
															      <div class="lng_right">
															        <div class="lng_right_top">
															          <table width="100%">
															            <tbody><tr height="77" valign="middle">
															              <td><div class="lng_right_tit"><a title="As long as you love me" href="https://www.tienganh123.com/hoc-tieng-anh-qua-bai-hat/9853-as-long-as-you-love-me.jsp">As long as you love me</a></div>
															                <div class="lng_right_content">As long as you love me<br>
																				I am under pressure</div></td>
															            </tr>
															          </tbody></table>
															        </div>
															        <div class="lng_r_info">
															          <div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span> <span>250435</span> </div>
															          <div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span> <span>1900</span> </div>
															        </div>
															      </div>
															    </li>
															    
															    <li style="background: rgb(239, 248, 250);">
															      <div class="lng_img"><a title="Diamonds" href="https://www.tienganh123.com/hoc-tieng-anh-qua-bai-hat/9641-diamonds.jsp"><img src="https://noidung.tienganh123.com/file/music/bai217/thump.jpg"></a></div>
															      <div class="lng_right">
															        <div class="lng_right_top">
															          <table width="100%">
															            <tbody><tr height="77" valign="middle">
															              <td><div class="lng_right_tit"><a title="Diamonds" href="https://www.tienganh123.com/hoc-tieng-anh-qua-bai-hat/9641-diamonds.jsp">Diamonds</a></div>
															                <div class="lng_right_content">(Shine bright like a diamond)2<br>
																				Find light in the beautiful sea</div></td>
															            </tr>
															          </tbody></table>
															        </div>
															        <div class="lng_r_info">
															          <div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_view.png"></span> <span>124049</span> </div>
															          <div class="lng_r_info_item"> <span><img src="https://www.tienganh123.com/images/home/lng_icon_comment.png"></span> <span>1513</span> </div>
															        </div>
															      </div>
															    </li>									    
															</ul> 
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
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