package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import connect.DBConnect;
import model.ListDeThi;
import model.LoadDeThi;

public class LoadDeThiDAO {
	public LoadDeThi getTTDeThi(String mabaitest) throws SQLException{
		Connection connection=DBConnect.getConnection();
		String sql="SELECT * FROM baitest INNER JOIN loaibaitest ON baitest.MaLoai=loaibaitest.MaLoai WHERE baitest.MaBaiTest='"+mabaitest+"'";
		System.out.println(sql);
		Statement st=(Statement) connection.createStatement();
		ResultSet rs=st.executeQuery(sql);
		LoadDeThi dt=new LoadDeThi();
		while(rs.next()){
			dt.setFileDeThi(rs.getString("fileBaiTest"));
			String a=rs.getString("ThoiGian");
			char ab[]=a.toCharArray();
			dt.setHour(Character.toString(ab[0])+Character.toString(ab[1]));
			dt.setLoaiBaiTest(rs.getString("TenLoai"));
			dt.setMaBaiTest(rs.getString("MaBaiTest"));
			dt.setMinute(Character.toString(ab[3])+Character.toString(ab[4]));
			dt.setMucThi(rs.getInt("MucThi"));
			dt.setNameTest(rs.getString("Name"));
			dt.setSec(Character.toString(ab[6])+Character.toString(ab[7]));
			dt.setSoCauHoi(rs.getInt("SoCau"));
		}
		return dt;
	}
public static void main(String[] args) throws SQLException {
        
        LoadDeThiDAO ls=new LoadDeThiDAO();
        
        System.out.println(ls.getTTDeThi("BT001").getFileDeThi()+"----"+ls.getTTDeThi("BT001").getLoaiBaiTest());
        
        //System.out.println(pt.getDetailProduct(1).getNumberPro());
    }
	
}
