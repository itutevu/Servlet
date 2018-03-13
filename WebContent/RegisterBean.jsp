<%@ page language="Java" import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="reg" scope="request" class="register.RegisterBean">
		<jsp:setProperty name="reg" property="userName" value='<%=request.getParameter("regusername")%>'/>
		<jsp:setProperty name="reg" property="password" value='<%=request.getParameter("regpass2")%>'/>
		<jsp:setProperty name="reg" property="gender" value='<%=request.getParameter("reggender")%>'/>
		<jsp:setProperty name="reg" property="phoneNum" value='<%=request.getParameter("regphone")%>'/>
		<jsp:setProperty name="reg" property="email" value='<%=request.getParameter("regemail")%>'/>
	</jsp:useBean>
	<jsp:forward page="Register">
		<jsp:param name="username" value="<%=reg.getUserName()%>" />
		<jsp:param name="password" value="<%=reg.getPassword()%>" />
		<jsp:param name="email" value="<%=reg.getEmail()%>" />
		<jsp:param name="gender" value="<%=reg.getGender()%>" />
		<jsp:param name="phonenumber" value="<%=reg.getPhoneNum()%>" />
	</jsp:forward>
</body>
</html>