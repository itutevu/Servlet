package model;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import connect.DBConnect;

/**
 * Servlet implementation class DiemSo
 */
@WebServlet("/DiemSo")
public class DiemSo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DiemSo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		String mabaitest=request.getParameter("mabaitest");
		String socau=request.getParameter("socau");
	    String s=request.getParameter("listcautl");
	    String gio=request.getParameter("ttgio");
	    String phut=request.getParameter("ttphut");
	    String giay=request.getParameter("ttgiay");
		Connection connection=DBConnect.getConnection();
		String filename = "";
		String getfileDapAn="SELECT fileDapAn FROM baitest WHERE baitest.MaBaiTest='"+mabaitest+"'";
		try {
			Statement st=(Statement) connection.createStatement();
			ResultSet rs=st.executeQuery(getfileDapAn);
			while(rs.next()){
				filename=rs.getString("fileDapAn");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//PrintWriter writer = response.getWriter();
		ServletContext context = getServletContext();
		InputStream is = (InputStream) context.getResourceAsStream(filename);
		//String s="ABCDACDBADCDAC";
		int diem=0;
		String text = null;
	    if (is != null) {
			InputStreamReader isr = new InputStreamReader(is);
			BufferedReader reader = new BufferedReader(isr);
			while ((text = reader.readLine()) != null) {
				for(int i=0;i<text.length();i++){
					if(s.charAt(i)==text.charAt(i))
					{
						diem++;
					}
				}
			}
		}
	    request.setAttribute("socaudung",Integer.toString(diem));
	    request.setAttribute("hour", gio);
	    request.setAttribute("minute", phut);
	    request.setAttribute("sec", giay);
	    request.setAttribute("mabaitest", mabaitest);
	    request.setAttribute("socaua", socau);
	    RequestDispatcher rd=request.getRequestDispatcher("KetQuaTest.jsp");
	    rd.include(request, response);
		//writer.println(diem);
		//writer.println(gio);
		//writer.println(phut);
		//writer.println(giay);
		//writer.println(mabaitest);
		//writer.println(socau);
	}

}
