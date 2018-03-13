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
	<link rel="stylesheet" type="text/css" href="admin.css">
	<link rel="stylesheet" type="text/css" href="memberstatic.css">
  	<script src="jquery-3.1.1.min.js"></script>
  	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  	<script src="bootstrap/js/bootstrap.min.js"></script>
  	<script>
	$(document).ready(function(){
    $("#btnshowhide").click(function(){
        $("#pnuser").toggle();
    });
	});
	$(document).ready(function() {
    $('a.login-window').click(function() {
    var loginBox = $(this).attr('href');
    $(loginBox).fadeIn(300);
    $('body').append('<div id="over">');
    $('#over').fadeIn(300);
    return false;
 	});
 	$(document).on('click', "a.close, #over", function() {
    $('#over, .login').fadeOut(300 , function() {
    $('#over').remove();
    });
    return false;
 });
});
	</script>
	<title>Admin</title>
</head>
<body>
	<div class="container">
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
	<div id="login">
		<div class="btn-toolbar">
			<span class="h4">Hello 
				<button id="btnshowhide" style="vertical-align:middle"><span>Admin</span></button>
				<div id="pnuser" class="panel-group">
					<div id="ttcn">
						<div class="panel panel-default" style="background-color: #CCCCCC;">
							<div class="panel-body">
								<img src="1475230513_malecostume.png" width="120" height="120" alt="AnhCaNhan">
									<h4><strong>Name: </strong>Admin-DucThinh</h4>
									<h5 style="margin-left:0px;">Profile <a href="changeinfo.jsp"><img src="1475233554_pencil.png" alt="ChinhSua" width="20" height="20"></a></h5>
									<h5 style="margin-left:0px;"><a href="">Post</a></h5>
									<h5 style="margin-left:0px;"><a href="">Notification</a></h5>
									<h5 style="margin-left:0px;"><a href="">Friend List</a></h5>
									<h5 style="margin-left:0px;"><a href="">Messages</a></h5>
									<h5 style="margin-left:0px;"><a href="">Ban list</a></h5>
									<h5 style="margin-left:0px;"><a href="">Member static</a></h5>
							</div>
						</div>
					</div>
				</div>
			</span>
    	</div>
  	</div>
	</div></br>
	<div class=col-md-12>
	<div class="btn-group btn-group-justified">
		<div class="btn-group">
			<button class="btn btn-primary">Register</button>
		</div>
		<div class="btn-group">
			<button class="btn btn-primary">FAQ</button>
		</div>
		<div class="btn-group">
			<button class="btn btn-primary">Study</button>
		</div>
		<div class="btn-group">
			<button class="btn btn-primary">Community</button>
		</div>
		<div class="btn-group">
			<button class="btn btn-primary">Calendar</button>
		</div>
	</div>
	</div></br>
	<div id="newthread" class="col-md-3">
	<div class="btn-group">
		<button class="btn btn-primary btn-sm pull-right" data-target="#signModal" data-toggle="modal">New Thread</button>
			<div class="modal" id="signModal" tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content" style="background-color: #9BDDFF">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">Create a New Thread</h4>
						</div>
						<div class="modal-body">
							<form class="form-default">
								<div class="form-group">
									<label for="inputusername">Name of Thread</label>
									<input class="form-control" type="text" name="" placeholder="Name Thread">
								</div>
								<div class="form-group">
									<label for="inputpasswork">PassWord</label>
									<input class="form-control" type="password" name="" placeholder="Can emty">
								</div>
								<div class="form-group">
									<label for="inputpasswork">Rety PassWord</label>
									<input class="form-control" type="password" name="" placeholder="Can emty">
								</div>
								<div class="form-group">
										<label for="inputpasswork">How many people can see this thread</label>
										<select class="form-control">
											<option>10</option>
											<option>100</option>
											<option>unlimited</option>
										</select>
								</div>
								<div class="form-group">
									<label for="inputpasswork">New thread wil talk about:</label>
									<input class="form-control" type="text" name="" placeholder="Toppic:">
								</div>
								<div class="form-group">
										<label for="inputpasswork">what the members can do in the new thread:</label>
										<select class="form-control">
											<option>read</option>
											<option>read + Write + UploadFile</option>
											<option>read + Write + UploadFile + Delete</option>
											<option>Anything</option>
										</select>
								</div>
								<div class="form-group">
									<label for="inputpasswork">Select the thread icon:</label>
									<form action="upload.php" method="post" enctype="multipart/form-data">
    									<input type="file" name="fileToUpload" id="fileToUpload">
									</form>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<div class="form-group">
    						<button type="submit" class="btn btn-default" data-dismiss="modal">Create</button>
      						<button type="submit" class="btn btn-default" data-dismiss="modal">Cancel</button>
						</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	</div></br>
	<div id="forumchung" class="col-md-12">
		<div id="forum1" class="col-md-9">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title" style="font-size: 29px; color: black; text-align: center; font-family: times;">MEMBERS INFORMATION</h1>
				</div>
				<div class="panel-body">
					<div style="margin-left: 150px;">
					<input type="text" name="some text" id="inputtext" placeholder="Type a key to search!">
					<button id="btn-search" type="button" onclick="loadDoc()">Search</button>
					<select id="demo" onchange="loadDoc2()">
					</select>
					<h1><p id="demo2"></p></h1>
					</div>
					<div style="margin-left: 100px;">
					<div class="input-group">
  						<span class="input-group-addon" id="basic-addon3" style="font-size: 20px;"><p style="width: 140px; height: 10px;">Full Name:</p></span>
  						<input type="text" class="form-control" id="iFULLNAME" aria-describedby="basic-addon3" style="width: 80%; font-size: 20px;">
					</div></br>
					<div class="input-group">
  						<span class="input-group-addon" id="basic-addon3" style="font-size: 20px;"><p style="width: 140px; height: 10px;">Email:</p></span>
  						<input type="text" class="form-control" id="iEMAIL" aria-describedby="basic-addon3" style="width: 80%; font-size: 20px;">
					</div></br>
					<div class="input-group">
  						<span class="input-group-addon" id="basic-addon3" style="font-size: 20px;"><p style="width: 140px; height: 10px;">Phone Number:</p></span>
  						<input type="text" class="form-control" id="iPHONENUMBER" aria-describedby="basic-addon3" style="width: 80%; font-size: 20px;">
					</div></br>
					<div class="input-group">
  						<span class="input-group-addon" id="basic-addon3" style="font-size: 20px;"><p style="width: 140px; height: 10px;">Address:</p></span>
  						<input type="text" class="form-control" id="iADDRESS" aria-describedby="basic-addon3" style="width: 80%; font-size: 20px;">
					</div></br>
					<div class="input-group">
  						<span class="input-group-addon" id="basic-addon3" style="font-size: 20px;"><p style="width: 140px; height: 10px;">Sex:</p></span>
  						<input type="text" class="form-control" id="iSEX" aria-describedby="basic-addon3" style="width: 80%; font-size: 20px;">
					</div></br>
					<div class="input-group">
  						<span class="input-group-addon" id="basic-addon3" style="font-size: 20px;"><p style="width: 140px; height: 10px;">Birthday:</p></span>
  						<input type="text" class="form-control" id="iBIRTHDAY" aria-describedby="basic-addon3" style="width: 80%; font-size: 20px;">
					</div></br>
					</div>
					<script>
					function loadDoc2() {
					  var xhttp2 = new XMLHttpRequest();
					  xhttp2.onreadystatechange = function() {
					    if (this.readyState == 4 && this.status == 200) {
					      myFunction2(this);
					    }
					  };
					  xhttp2.open("GET", "abc.xml", true);
					  xhttp2.send();
					}
					function myFunction2(xml2) {
					  var i;
					  var xmlDoc2 = xml2.responseXML;
					  var x = xmlDoc2.getElementsByTagName("CD");
					  for (i = 0; i <x.length; i++) {
					  if(x[i].getElementsByTagName("FULLNAME")[0].childNodes[0].nodeValue==document.getElementById("demo").value){
					    document.getElementById('iFULLNAME').value = x[i].getElementsByTagName("FULLNAME")[0].childNodes[0].nodeValue;
					    document.getElementById('iEMAIL').value = x[i].getElementsByTagName("EMAIL")[0].childNodes[0].nodeValue;
					    document.getElementById('iPHONENUMBER').value = x[i].getElementsByTagName("PHONENUMBER")[0].childNodes[0].nodeValue;
					    document.getElementById('iADDRESS').value = x[i].getElementsByTagName("ADDRESS")[0].childNodes[0].nodeValue;
					    document.getElementById('iSEX').value = x[i].getElementsByTagName("SEX")[0].childNodes[0].nodeValue;
					    document.getElementById('iBIRTHDAY').value = x[i].getElementsByTagName("BIRTHDAY")[0].childNodes[0].nodeValue;
					  }
					  if(document.getElementById("demo").value=="--select--"){
					    document.getElementById('iFULLNAME').value = "";
					    document.getElementById('iEMAIL').value = "";
					    document.getElementById('iPHONENUMBER').value = "";
					    document.getElementById('iADDRESS').value = "";
					    document.getElementById('iSEX').value = "";
					    document.getElementById('iBIRTHDAY').value = "";
					  }
					  }
					}
					function loadDoc() {
					  var xhttp = new XMLHttpRequest();
					  xhttp.onreadystatechange = function() {
					    if (this.readyState == 4 && this.status == 200) {
					      myFunction(this);
					    }
					  };
					  xhttp.open("GET", "abc.xml", true);
					  xhttp.send();
					}
					function myFunction(xml) {
					  var i;
					  var xmlDoc = xml.responseXML;
					  var list="<select><option>--select--</option></select>";
					  var x = xmlDoc.getElementsByTagName("CD");
					  for (i = 0; i <x.length; i++) {
					    var str=x[i].getElementsByTagName("FULLNAME")[0].childNodes[0].nodeValue;
					    if (str.search(document.getElementById("inputtext").value)!= -1) {
					    list += "<select><option>" +
					    str +
					    "</option></select>";
					  }
					}
					  document.getElementById("demo").innerHTML = list;
					}
					</script>
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
					<span class="h5"><a href="https://www.facebook.com/sharer/sharer.php?u=https://www.google.com.vn/?gfe_rd=cr&ei=jRTuV-OyL4yG2QS4j734Ag&gws_rd=ssl" target="_blank">Share on Facebook</a><img src="social-facebook-box-blue-icon.png"></span></br>
					<span class="h5"><a href="https://twitter.com/intent/tweet?original_referer=https%3A%2F%2Fsupport.twitter.com%2Farticles%2F231474&ref_src=twsrc%5Etfw&text=Adding%20the%20Tweet%20button%20to%20your%20website%20%7C%20Twitter%20Help%20Center&tw_p=tweetbutton&url=https%3A%2F%2Fhelp.twitter.com%2Farticles%2F231474%3Flang%3Den&via=support" target="_blank">Twitter</a><img src="twitter_16px_1202653_easyicon.net.png"></span></br>
					<span class="h5"><a href="https://www.google.com.vn/?gfe_rd=cr&ei=WDHpV-ilN-jN8geKr6jYAQ&gws_rd=ssl" target="_blank">Google</a><img src="Google-Chrome-icon.png"></span>
				</div>
			</div>
		</div>
	</div>
	<div class="login" id="login-box">
	<center><h3>Do you want to del it?</h3></center>
 	<span><button style="margin-left: 50px" class="button" type="button">Yes</button></span>
 	<span><button style="margin-left: 250px" class="button" type="button">No</button></span>
 	</div>
</div>
</body>
</html>