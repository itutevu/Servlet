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
		body {margin: 0;}

		ul.topnav {
		    list-style-type: none;
		    margin: 0;
		    padding: 0;
		    overflow: hidden;
		    background-color: #333;
		}
		
		ul.topnav li {float: left;}
		
		ul.topnav li a {
		    display: block;
		    color: white;
		    text-align: center;
		    padding: 14px 40px;
		    text-decoration: none;
		}
		
		ul.topnav li a:hover:not(.active) {background-color: #111;}
		
		ul.topnav li a.active {background-color: #4CAF50;}
		
		ul.topnav li.right {float: right;}
		
		@media screen and (max-width: 600px){
		    ul.topnav li.right, 
		    ul.topnav li {float: none;}
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
	<ul class="topnav">
	  	<li><a class="active" href="#home">Home</a></li>
	  	<li><a href="#news">Thành Viên</a></li>
	  	<li><a href="#contact">Thi Online</a></li>
	  	<li><a href="#tailieu">Tài Liệu</a></li>
	  	<li><a href="#Chat-Answer">Chat-Answer</a></li>
	  	<li class="right"><a href="#about">About</a></li>
	</ul>

	<div id="" style="padding:0 16px;">
  		<jsp:include page="QuanLiDeThi.jsp"></jsp:include>
  	</div>
</body>
</html>