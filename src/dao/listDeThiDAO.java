package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import connect.DBConnect;
import model.ListDeThi;

public class listDeThiDAO {
	public ArrayList<ListDeThi> getListDeThi(int mucthi) throws SQLException{
		Connection connection=DBConnect.getConnection();
		String sql="SELECT * FROM baitest WHERE MucThi='"+mucthi+"'";
		System.out.println(sql);
		Statement st=(Statement) connection.createStatement();
		ResultSet rs=st.executeQuery(sql);
		ArrayList<ListDeThi> list=new ArrayList<>();
		while(rs.next()){
			ListDeThi ls=new ListDeThi();
			ls.setMaBaiTest(rs.getString("MaBaiTest"));
			ls.setFileDapAn(rs.getString("fileDapAn"));
			ls.setFileDeThi(rs.getString("fileBaiTest"));
			ls.setName(rs.getString("Name"));
			ls.setMaLoai(rs.getString("MaLoai"));
			ls.setMucThi(rs.getString("MucThi"));
			ls.setNguoiUp(rs.getString("NguoiUp"));
			ls.setThoiGian(rs.getString("ThoiGian"));
			list.add(ls);
		}
		return list;
	}
	public static void main(String[] args) throws SQLException {
        
        listDeThiDAO ls=new listDeThiDAO();
        for(ListDeThi l:ls.getListDeThi(1)){
        	System.out.println(l.getFileDapAn()+"----"+l.getMucThi()+"----"+l.getFileDeThi()+"----"+l.getNguoiUp()+"----"+l.getName());
        }
        //System.out.println(pt.getDetailProduct(1).getNumberPro());
    }
}
