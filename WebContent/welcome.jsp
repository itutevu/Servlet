<%@ page language="java" 
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
   %>
   <%@ page import="logbean.UserBean" %>
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd">

   <html>
      <head>
         <meta http-equiv="Content-Type" 
            content="text/html; charset=windows-1256">
         <title>   User Logged Successfully   </title>
      </head>
      <body>
         <center>
         	<%UserBean currentUser=(UserBean)(session.getAttribute("currentSessionUser")); %>
         	<%out.print("<h2><p>Welcome : <span style='color:red'>"+currentUser.getFullName()+"</span><br><h2>"); %>
         	<%if(currentUser.getRoleID()==1){
				out.print("<a href=\"admin.jsp\" >Click here to admin pages</a> to continue");
         	} 
         	else{
				out.print("<a href=\"loginsuccess.jsp\" >Click here to userpages</a> to continue");
         	}
         	%>
         </center>
      </body>
   </html>