package wp.phuc.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conectionDAL {
	static final String driver = "com.mysql.jdbc.Driver";// ho�c thu��c
	static final String url = "jdbc:mysql://localhost/tracnghiemonline11?setUnicode=true&characterEncoding=UTF-8";// quizmanager la� t�n database
	static final String user = "root";// t�n mysql
	static final String pwd = "123";// m��t kh��u mysql'
	static Connection conn=null;
	public static Connection getConection() {
		try {
			Class.forName(driver);
			try {
				conn = DriverManager.getConnection(url, user, pwd);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	return conn;
	}
}
