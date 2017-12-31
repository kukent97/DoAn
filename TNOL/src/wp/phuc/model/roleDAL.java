package wp.phuc.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import wp.phuc.DAO.role;

public class roleDAL {
	DAL dal;
	public roleDAL() {
		dal=new DAL(); 
	}
	public ArrayList<role> listRole(){
		ResultSet rs=dal.getResultSet("select * from role");
		ArrayList<role> list=new ArrayList<>();
		try {
			while(rs.next()) {
				role rl=new role(rs.getInt(1), rs.getString(2));
				list.add(rl);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
