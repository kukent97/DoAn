package wp.phuc.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import wp.phuc.DAO.dapAn;

public class dapAnDAL {
	DAL dal;
	public dapAnDAL() {
		dal=new DAL();
	}
	public void insertDapAn() {}
	public void deleteDapAn() {}
	public void editDapAn() {}
	public ArrayList<dapAn> listDapAnTheoMaCauHoi(int maCauHoi){
		ResultSet rs=dal.getResultSet("select * from question_answer where questionId="+maCauHoi+"");
		ArrayList<dapAn> list=new ArrayList<>();
		try {
			while(rs.next()) {
				dapAn da=new dapAn(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getBoolean(4));
				list.add(da);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<dapAn> listDapAn(){
		ResultSet rs=dal.getResultSet("select * from question_answer");
		ArrayList<dapAn> list=new ArrayList<>();
		try {
			while(rs.next()) {
				dapAn da=new dapAn(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getBoolean(4));
				list.add(da);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
