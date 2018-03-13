<%@page import="model.LichSuTest"%>
<%@page import="dao.LSTest"%>
<%@page import="model.ListDeThi"%>
<%@page import="dao.listDeThiDAO"%>
<%@ page language ="java" import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="logbean.UserBean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<title>Toeic-Test1.1</title>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="Home.css">
	<script src="jquery-3.1.1.min.js"></script>
  	<script src="bootstrap/js/bootstrap.min.js"></script>
  	<script>
	$(document).ready(function(){
    /* affix the navbar after scroll below header */
    $("#affix1").affix({offset: {top: $("header").outerHeight(true)} });
	});
</script>
	<style>
		footer
		{
			padding: 1em;
			color: white;
			background-color: black;
			clear: left;
			text-align: center;
		}
		/* Post Table */

	</style>
</head>
<body>
	<%
		listDeThiDAO listDeThiDAO=new listDeThiDAO();
		LSTest lsTest=new LSTest();
		String diem=null;
		String gio=null;
		String phut=null;
		String giay=null;
		String mabaitest=null;
		String socau=null;
		if(request.getAttribute("socaudung")!=null){
			diem=request.getParameter("socaudung");
		}
		if(request.getParameter("hour")!=null){
			gio=request.getParameter("hour");
		}
		if(request.getParameter("minute")!=null){
			phut=request.getParameter("minute");
		}
		if(request.getParameter("sec")!=null){
			giay=request.getParameter("sec");
		}
		if(request.getParameter("mabaitest")!=null){
			mabaitest=request.getParameter("mabaitest");
		}
		if(request.getParameter("socaua")!=null){
			socau=request.getParameter("socaua");
		}
	%>
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
          				
          				<li class="dropdown"><a style="color: white; width: 132px;font-size: 20px; margin-left: 437px" class="dropdown-toggle" data-toggle="dropdown" href="#">
          					<%UserBean currentUser=(UserBean)(session.getAttribute("currentSessionUser")); %>
          					<%
          						String username=currentUser.getUsername();
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
	</nav><br>
	<div id="forumchung" class="col-md-12">
		<div id="forum1" class="col-md-9">
			<div style="text-align: center;">
				<h3>Kết quả bài test:</h3>
				<div class="col-md-6 col-md-offset-3" style="border: 2px solid black;">
					<p class="col-md-3">Số câu đúng: </p><p><%=socau %></p><br>
					<p class="col-md-3">Số câu sai: </p><p><%=mabaitest %></p>
					<p class="col-md-3">Thời gian làm bài: </p><p><%=gio %>:<%=phut %>:<%=giay %></p><br>
					
				</div><br><br>
			</div><br>
			<div class="col-md-4"></div>
			<div><h4>Lịch sử bài test đã làm: 
			<%
				out.print("<span style='color: red'>"+ username+"</span>");
			%></h4>
				<table class="table">
                    <thead>
                        <tr>
                            <th style="border: 1px solid black;">Tên Bài Test</th>
                            <th style="border: 1px solid black;">Điểm</th>
                            <th style="border: 1px solid black;">Ngày làm</th>
                            <th style="border: 1px solid black;">Thời gian làm bài</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                    	int count=0, diemso=0;
                    	for(LichSuTest ls:lsTest.getLSTest(username)){
                    		count++;
                    		diemso+=ls.getMark();
                    %>
                        <tr>
                            <td style="border: 1px solid black;"><%=ls.getNameTest() %></td>
                            <td style="border: 1px solid black;"><%=ls.getMark() %></td>
                            <td style="border: 1px solid black;"><%=ls.getDateTest() %></td>
                            <td style="border: 1px solid black;"><%=ls.getTimeForTest() %></td>
                        </tr>
                       	<%} %>
                    </tbody>
	        	</table>
	        	<p>Tổng số bài test đã làm: <%=count %></p><br>
	        	<a href="loginsuccess.jsp" class="btn btn-primary" style="width: 150px;">Thoát</a>
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