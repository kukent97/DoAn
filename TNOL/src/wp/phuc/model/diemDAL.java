package wp.phuc.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import wp.phuc.DAO.diem;

public class diemDAL {
	DAL dal;
	public diemDAL() {
		dal=new DAL();
	}
	public ArrayList<diem> listDiem(){
		ResultSet rs=dal.getResultSet("select * from mark");
		ArrayList<diem> listDiem=new ArrayList<>();
		try {
			while(rs.next()) {
				diem DM=new diem(rs.getString(1), rs.getInt(2), rs.getFloat(3),rs.getInt(4));
				listDiem.add(DM);
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listDiem;
	}
	public boolean insertDiem(String tenHocVien, int maMonHoc, float diem, int kyThi) {
		String sql="insert  into mark (userId,subjectId,mark,examId) values (N'"+tenHocVien+"',"+maMonHoc+","+diem+","+kyThi+")";
		DAL dal=new DAL();
		return dal.updateData(sql);
	}
	public static void main(String[] args) {
		diemDAL dal=new diemDAL();
		float a=0;
		//System.out.println(dal.insertDiem("15110280", 4,a ));
	}
}
