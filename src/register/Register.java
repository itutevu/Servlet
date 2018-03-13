package register;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		System.out.println("Connect to database Mysql");
		Connection conn=null;
		String driver = "com.mysql.jdbc.Driver";
		String iusername="";
		String ipassword="";
		String iemail="";
		String igender="";
		String ifullname="null";
		String iphonenumber="";
		String ngaysinh="1980-1-1";
		String time=null;
		String address="null";
		int roleid=2;
		String checkuser="";
		String insert="";
		Statement st=null;
		ResultSet rs=null;
		HttpSession session=request.getSession(true);
		try {
			Class.forName(driver).newInstance();
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbweb","root","1234");
			iusername=request.getParameter("username").toString();
			ipassword=request.getParameter("password").toString();
			iemail=request.getParameter("email").toString();
			igender=request.getParameter("gender").toString();
			iphonenumber=request.getParameter("phonenumber").toString();
			checkuser="select UserName from user where UserName='"+iusername+"'";
			System.out.println(checkuser);
			st=(Statement) conn.createStatement();
			rs=st.executeQuery(checkuser);
			int count=0;
			while(rs.next()){
				count++;
			}
			System.out.println(count);
			if(count==0){
				insert="INSERT INTO user VALUES (?,?,?,?,?,?,?,?,?,?)";
				PreparedStatement ps=(PreparedStatement) conn.prepareStatement(insert);
				ps.setString(1, iusername);
				ps.setString(2, ipassword);
				ps.setString(3, ifullname);
				ps.setString(4, ngaysinh);
				ps.setString(5, iphonenumber);
				ps.setString(6, iemail);
				ps.setString(7, time);
				ps.setString(8, address);
				ps.setInt(9, roleid);
				ps.setString(10, igender);
				int i=ps.executeUpdate();
				System.out.println(i);
				session.setAttribute("username", iusername);
				if(i>0){
					out.print("success");
				}
				else{
					out.print("Lỗi đăng kí!!!");
					request.getRequestDispatcher("register.jsp").include(request, response);
				}
			}
			else{
				out.print("Tên tài khoản hoặc mật khẩu bị trùng!!!");
			}
			System.out.println("Connected to the database"); 
			conn.close();
			System.out.println("Disconnected from database");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
