package register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class CheckUser
 */
@WebServlet("/CheckUser")
public class CheckUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		System.out.println("Connect to database Mysql");
		Connection conn=null;
		String driver = "com.mysql.jdbc.Driver";
		String iusername="";
		String checkuser="";
		Statement st=null;
		ResultSet rs=null;
		try {
			Class.forName(driver).newInstance();
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbweb","root","1234");
			iusername=request.getParameter("username").toString();
			checkuser="select UserName from user where UserName='"+iusername+"'";
			System.out.println(checkuser);
			st=(Statement) conn.createStatement();
			rs=st.executeQuery(checkuser);
			int count=0;
			while(rs.next()){
				count++;
			}
			System.out.println(count);
			if(count>0){
				response.setContentType("text/html;charset=UTF-8");
	            response.getWriter().write("True");
			}
			else{
				response.setContentType("text/html;charset=UTF-8");
	            response.getWriter().write("Fail");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
