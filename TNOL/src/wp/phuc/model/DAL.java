package wp.phuc.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DAL {
	
	Statement sm;
	Connection conn=null;
// hÀm khởi tạo 			
public DAL() {
	conn=conectionDAL.getConection();
		try {
			sm = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} //
	
}
public ResultSet getResultSet(String sql) {

// rs là từng dòng trong bảng csdl bắt đầu từ dòng trước dòng 1
	try {
		return sm.executeQuery(sql);
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return null;
}
public  boolean updateData(String sql) {
	boolean f;
	sm = null;
	try {
		sm = conn.createStatement();
		sm.executeUpdate(sql);// thực hiện câu lệnh sql
		f = true;
	} catch (SQLException e) {
		e.printStackTrace();
		f = false;
	}

	return f;
}

}
