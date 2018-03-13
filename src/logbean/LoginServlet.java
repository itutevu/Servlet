package logbean;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{	    

		     UserBean user = new UserBean();
		     user.setUserName(request.getParameter("un"));
		     user.setPassword(request.getParameter("pw"));

		     user = UserDAO.login(user);
			 int role=user.getRoleID();
		     if (user.isValid())
		     {
			      if(role==1){
			          HttpSession session = request.getSession(true);	    
			          session.setAttribute("currentSessionUser",user); 
			          response.sendRedirect("welcome.jsp");
			          response.sendRedirect("admin.jsp");
			          response.sendRedirect("header.jsp");
		          }
			      else{
			    	  HttpSession session = request.getSession(true);	    
			          session.setAttribute("currentSessionUser",user); 
			          response.sendRedirect("welcome.jsp"); 
			          response.sendRedirect("header.jsp");
			          response.sendRedirect("Toeic-Test11.jsp");
			          response.sendRedirect("TestOl.jsp");
			          response.sendRedirect("KetQuaTest.jsp");
			      }
		     }
			        
		     else 
		          response.sendRedirect("invalidLogin.jsp");
		     //error page 
		} 
				
				
		catch (Throwable theException) 	    
		{
		     System.out.println(theException); 
		}
		       }
	
}
