<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
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
	<div class="row">
		<div class="col-md-7 col-md-offset-3" style="background-color: #F2F2F2; border:1px solid black; margin-left: 21%;">
			<center>
				<%
					String username=(String) session.getAttribute("regusername");
					if(username==null) username="";
					out.print("<h2><p>Hello : <span>"+username+"</span> You are a member of this forum :))</p></h2>");
					out.print("<a href=\"HOME.jsp\" >Click here</a> to return HOMEPAGE");
				%>
				<img alt="" src="big_smile.png"></br>
			</center>
		</div>
	</div>
</body>
</html>