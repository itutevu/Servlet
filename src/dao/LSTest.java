package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import connect.DBConnect;
import model.LichSuTest;
import model.ListDeThi;

public class LSTest {
	public ArrayList<LichSuTest> getLSTest(String userName) throws SQLException{
		Connection connection =DBConnect.getConnection();
		String sql="SELECT * FROM lambaitest INNER JOIN baitest ON baitest.MaBaiTest = lambaitest.MaBaiTest INNER JOIN `user` ON lambaitest.UserName=`user`.UserName where lambaitest.UserName='"+userName+"'";
		System.out.println(sql);
		Statement st=(Statement) connection.createStatement();
		ResultSet rs=st.executeQuery(sql);
		ArrayList<LichSuTest> list=new ArrayList<>();
		while(rs.next()){
			LichSuTest ls=new LichSuTest();
			ls.setDateTest(rs.getString("NgayLam"));
			ls.setMark(rs.getInt("Diem"));
			ls.setNameTest(rs.getString("Name"));
			ls.setTimeForTest(rs.getString("ThoiGianLamBai"));
			list.add(ls);
		}
		return list;
	}
public static void main(String[] args) throws SQLException {
        LSTest ls=new LSTest();
        for(LichSuTest l:ls.getLSTest("thinh")){
        	System.out.println(l.getDateTest()+"----"+l.getMark()+"----"+l.getNameTest()+"----"+l.getTimeForTest());
        }
        //System.out.println(pt.getDetailProduct(1).getNumberPro());
    }
}
