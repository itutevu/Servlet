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
					<h1 class="panel-title"><img src="faq.png" height="38" width="38"> FREQUENTLY ASKED QUESTIONS</h1>
				</div>
				<div class="panel-body">
					




						<div class="panel">				
			 			 <h3><a href="http://pub31.bravenet.com/faq/show.php?usernum=2591745937" title="Frequently asked English questions" target="newwin">Learn English FAQ pages</a></h3>
      					 <p>The most common questions that we get asked are:- </p>
							<section class="toggle">
								<input type="checkbox" id="q1">
								<label for="q1">I want to learn English.</label>
								<p>Actually this is often phrased as "I want learn English," and I am always tempted to say "Well you've found it!" <br><br>
								I would just like to point out:<br>
								<i class="icon-hand-right"></i>This isn't a question, it's a statement.<br>
								<i class="icon-hand-right"></i>It's boring.<br>
								<i class="icon-hand-right"></i>You need to be more specific.</p>
							</section>
					
							<section class="toggle">
								<input type="checkbox" id="q2">
								<label for="q2">How can I improve my English?</label>
								  <p>This is a better question, but it's huge. So, we've written a whole section on <a href="http://www.learnenglish.de/improvepage.jsp">How to improve your English</a> here. </p>
							</section>							

							<section class="toggle">
								<input type="checkbox" id="q3">
								<label for="q3">Do you provide on-line courses?</label>							
								<p>We run several free online sessions, each session stands alone and anyone is free to join us. The closest we get to running a 'course' is the Back to Basics session with Lynne  in Second Life, along with our free <a href="http://www.learn-english-online.org">lessons</a> on the LEO web site. </p>
								<p>If you need a bit of hand-holding there is a list of on-line English courses on our <a href="resources/rescourses.jsp">Web Resources</a> page.</p>
							</section>

							<section class="toggle">
								<input type="checkbox" id="q4">
								<label for="q4">Is learning English difficult?</label>
								<p>To start with - No. English is actually an easy language to begin learning because: <br>
									<i class="icon-hand-right"></i> it has no genders. Apart from people, all objects are 'neuter', not 'masculine' or 'feminine'. So you say 'it' for such things, and do
									not need to learn any genders.<br>
									<i class="icon-hand-right"></i> it usually has easy verb endings. Apart from a few 'irregular' verbs, verb endings are easy, and hardly change.<br>
					                <i class="icon-hand-right"></i> adjectives remain the same for all words - there are no different endings to learn.<br>
				              		<i class="icon-hand-right"></i>the singular and plural pronoun 'you' is the same. There is no need to decide whether to use a polite form, or an intimate form.</p>
							</section>

							<section class="toggle">
								<input type="checkbox" id="q5"> 
								
								<label for="q7">How long will it take me to learn English?</label>
								 <p>How long is a piece of string? Actually, if I had 1€ for every time I have heard that question I could travel round the world. The answer is, "It varies", it depends on a variety of factors. For instance; your motivation (if you have a gun held to your head I bet you'll learn very quickly), the level of English you  wish to acquire, not everyone needs or wants to be fluent in a second language, someone who wants to use English on holiday does not need the same level of English as someone who needs it for business purposes. As a result some people are happy after 1 to 3 years, whilst others might take 4 years, 10 years, or a lifetime! You can't give accurate time frames for learning.</p>
					            <p>There has been a lot of research done into this area by people a lot cleverer than me, it shows that effective learning is influenced by many factors, some of which are:- <br><br>
					            <i class="icon-hand-right"></i>Access to effective teaching and educational materials influence the length of time it takes to learn English.<br>
					            <i class="icon-hand-right"></i>People vary in abilities, motivation and readiness to learn.<br>
					            <i class="icon-hand-right"></i> Classes should be tailored to the linguistic, cultural, and academic learning needs of the learner.</p>
							</section>

							<section class="toggle">
								<input type="checkbox" id="q8">
								<label for="q8">What is the most difficult thing about learning English?</label>
								  <p>The most difficult things about learning English are:-<br><br>
									<i class="icon-hand-right"></i>Spelling and pronunciation - the spelling of a word may not show what the pronunciation is. This is because English words came from many different sources, learn the <a href="http://www.learnenglish.de/pronunciation/phoneticpage.jsp">phonetic spelling sounds</a> and make and use a good dictionary. <br>
									<i class="icon-hand-right"></i>False friends - because English came from two main sources - old French, and old Anglo-Saxon, there is a very large vocabulary of words. Watch out for words that seem similar, they may have come from your language and mean the same, these are called cognitives, or they may have different meanings these are false cognitives (false friends).<br>
									<i class="icon-hand-right"></i>Idioms - native English speakers use a lot of idioms, that is - words used in a way which is not their obvious meaning. Learn them, but try not to use them in important meetings etc., they can be quite open to misinterpretation. If the people you are talking to suddenly look very shocked you've probably just misused one.</p>
							</section>
							
							<section class="toggle">
								<input type="checkbox" id="q9">
								<label for="q9">Is there a difference between American and British English?</label>
								   <p>Unfortunately the answer to this question is yes. There are many differences between British and American English, pronunciation, spelling and grammar are just a few. In fact English is the first language in many countries and there are differences between them all, these include; Australia, Canada, Ireland, Jamaica, New Zealand, South Africa and the USA. This site is devoted to British English. </p>
						            <p>As one of my favourite writers said "<i>We have everything in common with America nowadays, except, of course, language.</i>" (Oscar Wilde, 1887, The Canterville Ghost). </p>
						            <p>We have written a useful guide to <a href="http://www.learnenglish.de/mistakes/usvsbrenglish.jsp">the differences between US and British English here</a>. </p>
							</section>
							
							<section class="toggle">
								<input type="checkbox" id="q10">
								<label for="q10">Which is better American English or British English?</label>
								              <p>You don't expect me to answer that, do you?  Actually - it depends.  It depends on which English you will be most exposed to. If you are moving to the US then learn American English, if you're going to work for a British company then learn British English. And don't forget there are many different kinds of English and the rising star of International English. </p>
							</section>							

							<section class="toggle">
								<input type="checkbox" id="q11">
								<label for="q11">What do I need to start learning English?</label>
								<p>If you have a brain, you're off to a good start.  Along with that and the willingness to use it you will need the following:-<br><br>
									<i class="icon-hand-right"></i>Time - practise your English every day, listening, writing, speaking or reading, or even better - doing all four things.<br>
						            <i class="icon-hand-right"></i> Patience - do not give up, learning a language can be a long process, but don't panic like most long journeys, you will get there in the end.<br>
						            <i class="icon-hand-right"></i>A sense of humour - learning English should be fun, so have fun!<br>	
									<i class="icon-hand-right"></i><a href="http://www.learnenglish.de/improveenglish/notebookpage.jsp">A vocabulary notebook</a> - write down new words in a notebook. Don't translate them, but write the new word into context in a meaningful sentence.<br>
									<i class="icon-hand-right"></i> A good English dictionary - not a Translate to English dictionary, but a real English dictionary. Look up the meaning of new words in your dictionary first, this will help you build your vocabulary.</p>
							</section>
								
							<section class="toggle">
								<input type="checkbox" id="q12">
								<label for="q12">What is the best way to practise my English?</label>
								<p>Regularly.  There are a couple of other things that will help:-<br><br>
									<i class="icon-hand-right"></i> Having a good English teacher or an English speaking friend is always going to help, you can learn English through books and tapes but books and tapes can't answer questions or help when you are stuck. <br>
					          	    <i class="icon-hand-right"></i>People to practice with.  You are learning a language and language is about communicating, not filling in gaps or ticking boxes.  So, get together with other people who are interested in learning / practising / helping others to learn English, it increases the fun and reduces the frustration. Join or start an <a href="englishclubs/englishclubsworld.jsp">English club</a> or join a book reading club, if you can't find one in your area set one up or join the <a href="http://news.bbc.co.uk/2/hi/uk/2798907.stm" target="newwin">BBCs on-line book group</a>.<br> 
							        <a href="improvepage.jsp">We have included a whole section on this here. </a><br>
								</p>
							</section>							
					
							<section class="toggle">
								<input type="checkbox" id="q15">
								<label for="q15">Are you mad?</label>
								<p>Probably.</p>
							</section>										
		 
  					



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

</body></html>

