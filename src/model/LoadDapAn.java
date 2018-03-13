package model;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.InputStream;

/**
 * Servlet implementation class LoadDapAn
 */
@WebServlet("/LoadDapAn")
public class LoadDapAn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadDapAn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html");
		
		//
		// We are going to read a file called configuration.properties. This
		// file is placed under the WEB-INF directory.
		//
		String filename = "/DapAn/DapAn.txt";
		
		ServletContext context = getServletContext();
		
		//
		// First get the file InputStream using ServletContext.getResourceAsStream()
		// method.
		//
		InputStream is = (InputStream) context.getResourceAsStream(filename);
		if (is != null) {
			InputStreamReader isr = new InputStreamReader(is);
			BufferedReader reader = new BufferedReader(isr);
			PrintWriter writer = response.getWriter();
			String text = "";
			
			//
			// We read the file line by line and later will be displayed on the 
			// browser page.
			//
			while ((text = reader.readLine()) != null) {
				writer.println(text);
				writer.print("</br>");
					char ch[] = text.toCharArray();
					writer.print(ch[1]);
					writer.print(ch[3]);
			}
			
		}
	  }


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		service(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		service(request, response);
	}

}
