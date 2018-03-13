<%@page import="java.io.PrintWriter"%>
<%@page import="model.LoadDeThi"%>
<%@page import="dao.LoadDeThiDAO"%>
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
  	<style type="text/css">
  		.andiphanlambai{
  		pointer-events:none;}
  	</style>
  	<script>
	  	var h = null; // Giờ
	    var m = null; // Phút
	    var s = null; // Giây
	 
	    var timeout = null; // Timeout
	 
	    function start()
	    {
	    	if (h === null)
	        {
	            h = parseInt(document.getElementById('h_val').value);
	            m = parseInt(document.getElementById('m_val').value);
	            s = parseInt(document.getElementById('s_val').value);
	        }
	     
	        /*BƯỚC 1: CHUYỂN ĐỔI DỮ LIỆU*/
	        // Nếu số giây = -1 tức là đã chạy ngược hết số giây, lúc này:
	        //  - giảm số phút xuống 1 đơn vị
	        //  - thiết lập số giây lại 59
	        if (s === -1){
	            m -= 1;
	            s = 59;
	        }
	     
	        // Nếu số phút = -1 tức là đã chạy ngược hết số phút, lúc này:
	        //  - giảm số giờ xuống 1 đơn vị
	        //  - thiết lập số phút lại 59
	        if (m === -1){
	            h -= 1;
	            m = 59;
	        }
	     
	        // Nếu số giờ = -1 tức là đã hết giờ, lúc này:
	        //  - Dừng chương trình
	        if (h == -1){
	            clearTimeout(timeout);
	            alert('Hết giờ');
	            $('#checkdapan').addClass("andiphanlambai");
	            return false;
	        }
	     
	        /*BƯỚC 1: HIỂN THỊ ĐỒNG HỒ*/
	        document.getElementById('h').innerText = h.toString();
	        document.getElementById('m').innerText = m.toString();
	        document.getElementById('s').innerText = s.toString();
	     
	        /*BƯỚC 1: GIẢM PHÚT XUỐNG 1 GIÂY VÀ GỌI LẠI SAU 1 GIÂY */
	        timeout = setTimeout(function(){
	            s--;
	            start();
	        }, 1000);
	    }
	    function stop(){
	        clearTimeout(timeout);
	    }
  		$(document).ready(function(){
  			$('#ttbaithi').show();
  			$('#baithi').hide();
  			$('#btnshow').click(function(){
  				$('#baithi').show();
  				$('#ttbaithi').hide();
  			});
  		});
  		$(window).scroll(function(){
  		  var sticky = $('.sticky'),tttime=$('#ttthoigian'),
  		      scroll = $(window).scrollTop();

  		  if (scroll >= 350) sticky.addClass('fixed');
  		  else sticky.removeClass('fixed');
  		  if(scroll >=300) tttime.addClass('codinhtg');
  		  else tttime.removeClass('codinhtg');
  		});
	</script>
	<style>
	.codinhtg{
	position: fixed;
	top: 50;right: 0;
	}
		.fixed {
			  position: fixed;
			  top:0; left:0;
			  width: 100%; }
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
	<%
		LoadDeThiDAO load=new LoadDeThiDAO();
		LoadDeThi loadDeThi=new LoadDeThi();
		String mabaitest="";
		if(request.getParameter("mabaitest")!=null){
			mabaitest=request.getParameter("mabaitest");
			loadDeThi= load.getTTDeThi(mabaitest);
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
	<div id="ttbaithi">
		<p style="text-align: center; font-size: 30px;"> Thông tin bài test</p>
		<div class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-6">
			<div style="text-align: center;border-bottom: 2px inset #F4C82D;">
				<p class="col-md-3" style="font-size: 20px;">Mã bài test:</p><p class="col-md-9" style="font-size: 23px;"> <%=mabaitest %></p>
				<p class="col-md-3" style="font-size: 20px;">Loại bài test:</p>
				<p class="col-md-9" style="font-size: 23px;"><%=loadDeThi.getLoaiBaiTest() %>.</p>
				<p class="col-md-3" style="font-size: 20px;">Tên bài test:</p><p class="col-md-9" style="font-size: 23px;"> <%=loadDeThi.getNameTest() %></p>
				<p class="col-md-3" style="font-size: 20px;">Thời gian làm:</p><p class="col-md-9" style="font-size: 23px;"> <%=loadDeThi.getHour() %>: <%=loadDeThi.getMinute() %>: <%=loadDeThi.getSec() %></p>
				<p class="col-md-3" style="font-size: 20px;">Số câu hỏi:</p><p class="col-md-9" style="font-size: 23px;"> <%=loadDeThi.getSoCauHoi() %></p>
			</div><br>>
			<div>
		    <input style="display: none;" type="text" id="h_val" placeholder="Giờ" value="<%=loadDeThi.getHour()%>"/> <br/>
		    <input style="display: none;" type="text" id="m_val" placeholder="Phút" value="<%=loadDeThi.getMinute() %>"/> <br/>
		    <input style="display: none;" type="text" id="s_val" placeholder="Giây" value="<%=loadDeThi.getSec()%>"/>
		    <input style="display: none;" type="button" value="Stop" onclick="stop()"/>  <br/> <br/>
		</div>
		<button id="btnshow" class="btn btn-default col-md-offset-4" onclick="start()" style="width: 200px; font-size: 23px; color: #5797FB;">TestNow</button>
		</div>
	</div>
	<div id="baithi">
	<section  class="col-md-9"   style="border-right: 1px solid black;">
		<div class="sticky">
			<p>Bài thi </p><p style="color: red;">(Nếu không load đề thi, hãy bấm F5 để load lại đề thi hoặc thông báo cho ban quản trị)</p>
			<div>
			<%if(loadDeThi.getFileDeThi()!=null){%>
			<object width="990" height="560" data="FileReadPdf?bookId=<%=mabaitest %>" type="application/pdf"></object>
			<%}else{ %>
			<h4 style="color: red;">Xin lỗi bài test này chưa có file đề bài</h4>
			<%} %>
			</div>
		</div>
	</section>
	<form method="post" action="DiemSo">
		<div class="col-md-3">
			<span>Thời gian:</span>
			<div id="ttthoigian">
			    <span id="h" style="font-size: 26px;border: 2px solid black">sds</span><span style="font-size: 26px;">:</span>
			    <span id="m" style="font-size: 26px;border: 2px solid black">Phút</span><span style="font-size: 26px;">:</span>
			    <span id="s" style="font-size: 26px;border: 2px solid black">Giây</span>
			</div>
			<div  id="checkdapan">
				<%for(int i=1;i<=loadDeThi.getSoCauHoi();i++){ %>
					<form id="myForm">
						<span>Câu:<%=i %></span>
						<input id="RA" type="radio" name="<%=i %>" value="A">A    
						<input id="RB" type="radio" name="<%=i %>" value="B">B
						<input id="RC" type="radio" name="<%=i %>" value="C">C
						<input id="RD" type="radio" name="<%=i %>" value="D">D
					</form>
				<%} %>
			</div>
		<input id="radiosubmit" type="submit" class="btn btn-default" value="Nộp bài">
		<input style="display: none;" id="sel" name="listcautl">
		<input name="ttgio" id="ttgio">
		<input name="ttphut" id="ttphut">
		<input name="ttgiay" id="ttgiay">
		<input name="mabaitest" id="mabaitest" value="<%=mabaitest%>">
		<input name="socau" id="socau" value="<%=loadDeThi.getSoCauHoi()%>">
		</div>
		
	</form>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#radiosubmit').click(function(e){
				var h="";
				var m="";
				var s="";
				var h_val="";
				var m_val="";
				var s_val="";
				h_val=parseInt($('#h_val').val());
				m_val=parseInt($('#m_val').val());
				s_val=parseInt($('#s_val').val());
				h=parseInt(document.getElementById('h').innerText);
				m=parseInt(document.getElementById('m').innerText);
				s=parseInt(document.getElementById('s').innerText);
					if(s_val<s){
						s_val=s_val+60;
						m=m+1;
					}
					if(m_val<m){
						m_val=m_val+60;
						h=h+1;
					}
					s_val=s_val-s;
					m_val=m_val-m;
					h_val=h_val-h;
				document.getElementById('ttgio').value = h_val.toString();
				document.getElementById('ttphut').value =m_val.toString();
				document.getElementById('ttgiay').value = s_val.toString();
				var kq="";
				for(var i=1;i<=100;i++){
					var checkedradio = $('[name="'+i+'"]:radio:checked').val();
					if(checkedradio=='undefined'||checkedradio==undefined){
						kq+="E";
						checkedradio="";
						$('#loikhongdaydu').html('loikhongdaydu');
					}
					kq+=checkedradio;
				}
				document.getElementById('sel').value = kq;
			});
		});
	</script>
	</div>
</body>
</html>