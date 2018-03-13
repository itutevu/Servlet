package connect;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class DBConnect {
	public static Connection getConnection(){
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/dbweb","root","1234");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return conn;
	}
	public static void main(String[] args) {
        System.out.println(getConnection());
    }
}
