package logbean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Driver;
import com.mysql.jdbc.Statement;

public class ConnectToDB {
	public static boolean ConnectDB(String UserName, String Pass){
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Connection conn=null;
		Statement stm=null;
		ResultSet rs=null;
		boolean tmp=false;
		try {
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbweb","root","1234");
			stm=(Statement) conn.createStatement();
			rs=stm.executeQuery("select UserName,Password,FullName from user where UserName='"+UserName+"' and  Password='"+Pass+"'");
			tmp=rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tmp;
	}
}
