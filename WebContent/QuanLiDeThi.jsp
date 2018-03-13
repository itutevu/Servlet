<%@ page language ="java" import="java.sql.*"%>
<%@ page import="logbean.UserBean" %>
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
		
		.ul-list {
		    list-style-type: none;
		    margin: 0;
		    padding: 0;
		    width: 15%;
		    background-color: #f1f1f1;
		    height: 100%;
		    overflow: auto;
		}
		
		.li-list a {
		    display: block;
		    color: #000;
		    padding: 8px 16px;
		    text-decoration: none;
		}
		
	</style>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#dsDeThi').hide();
			$('#uploadDeThi').show();
			if($('#btndsdethi').click(function(){
				$('#dsDeThi').show();
				$('#uploadDeThi').hide();
			}));
			if($('#btnuploaddethi').click(function(){
				$('#dsDeThi').hide();
				$('#uploadDeThi').show();
			}));
		});
	</script>
</head>
<body>
	<ul class="ul-list col-md-3">
	  	<li class="li-list"><a id="btndsdethi" href="#DanhSach">Danh Sách Đề Thi</a></li>
	  	<li class="li-list"><a id="btnuploaddethi" href="#ThemDeThi">UpLoad Đề Thi</a></li>
	  	<li class="li-list"><a href="#about">About</a></li>
	</ul>

	<div class="col-md-10" style="padding:1px 16px;">
		 <div id="dsDeThi">
		 	sadasd
		 </div>
		 <div id="uploadDeThi">
		 	<div style="border: 2px solid red;">
		 		<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title"><img src="register.png" height="38" width="38"> Upload Đề Thi</h1>
				</div>
				<form action="">
					<div class="panel-body">
						<div class="panel">				
							<div class="col-md-13 col-sm-13">
								<label for="" style="width: 248px;">User Name:</label>
								<input type="text" name="testname" maxlength="30" value tabindex="1" autocomplete="off" id="testname" class="primary textbox" style="width: 50%;" required>
								<span style="color: red;" id="noteusername"></span>
								<p class="description" style="width: auto; margin-left: 248px;">
									"Hệ thống sẽ kiểm tra tên đề thi để tránh bị trùng."
								</p>
							</div>
							<div class="col-md-13 col-sm-13">
								<label for="regusername" style="width: 248px;">Thời gian làm bài:</label>
								<label for="">Giờ:</label>
									<select name="hour" id="hour">
										<option value="0">0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
									</select>
								<label for="">Phút:</label>
									<select name="minute" id="minute">
										<option value="0">0</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
									</select>
								<p class="description" style="width: auto; margin-left: 248px;">
									"Thời gian tối thiểu là 30p."
								</p>
							</div>
							<div class="col-md-13 col-sm-13">
								<label for="" style="width: 248px;">Chọn file Đề thi</label>
								<input style="width: auto; margin-left: 248px;" type="file" name="filedethi" id="filedethi" required/>
								<span style="color: red;" id="noteusername"></span>
								<p class="description" style="width: auto; margin-left: 248px;">
									"File đề thi bắt buộc phải dưới định dạng PDF."
								</p>
							</div>
							<div class="col-md-13 col-sm-13">
								<span><label for="" style="width: 248px;">Chọn file Đáp án</label>
								<input style="width: auto; margin-left: 248px;" type="file" name="filedapan" id="filedapan" required/></span>
								<span style="color: red;" id="noteusername"></span>
								<p class="description" style="width: auto; margin-left: 248px;">
									"File đáp án bắt buộc phải dưới định dạng text, và chỉ gồm đáp án ABCD theo thứ tự câu hỏi."
								</p>
							</div>
							<div class="col-md-13 col-sm-13">
								<label for="" style="width: 248px;">Thời gian làm bài:</label>
								<label for="">Mức thi Toeic:</label>
									<select name="mucthi" id="mucthi">
										<option value="1">250-450</option>
										<option value="2">450-650</option>
										<option value="3">650-950</option>
									</select>
								<label for="">Số lượng câu hỏi:</label>
								<input type="text" name="slcauhoi" maxlength="30" value tabindex="1" autocomplete="off" id="slcauhoi" class="primary textbox" style="width: 22%;"required>
							</div>
						</div>
					</div>
				</form>
		 	</div>
		 </div>
	</div>
	</div>
</body>
</html>