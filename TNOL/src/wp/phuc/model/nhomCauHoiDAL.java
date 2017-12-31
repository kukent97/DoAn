package wp.phuc.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import wp.phuc.DAO.nhomCauHoi;

public class nhomCauHoiDAL {
	DAL dal;
	public nhomCauHoiDAL() {
		dal=new DAL();
	}
	public boolean insertNhomCauHoi(String tenNhomCauHoi, int monHoc) {
		String sql="insert  into questionGroup (questionGroupName,subjectId) values (N'"+tenNhomCauHoi+"',"+monHoc+")";
		DAL dal=new DAL();
		return dal.updateData(sql);
	}
	
	public boolean deleteNhomCauHoi( int maNhomCauHoi) {
		String sql="delete from questionGroup where questionGroupId='"+maNhomCauHoi+"'";
		DAL dal= new DAL();
		return dal.updateData(sql);
		
	}
	
	public boolean EditNhomCauHoi(int maNhomCauHoi, String tenNhomCauHoi, int monHoc ) {
		String sql="update questionGroup set questionGroupName=N'"+tenNhomCauHoi+"',subjectId="+monHoc+" where questionGroupId="+maNhomCauHoi+"";
		DAL dal= new DAL();
		return dal.updateData(sql);
	}
	public ArrayList<nhomCauHoi> listNhomCauHoi(){
		ResultSet rs=dal.getResultSet("select * from questiongroup");
		ArrayList<nhomCauHoi> list=new ArrayList<>();
		try {
			while(rs.next()) {
				nhomCauHoi nch=new nhomCauHoi(rs.getInt(1), rs.getString(2),rs.getInt(3));
				list.add(nch);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<nhomCauHoi> listNhomCauHoiTheoMaMonHoc(int maMonHoc){
		ResultSet rs=dal.getResultSet("select * from questionGroup where subjectId="+maMonHoc+"");
		ArrayList<nhomCauHoi> list=new ArrayList<>();
		try {
			while(rs.next()) {
			nhomCauHoi nch=new nhomCauHoi(rs.getInt(1), rs.getString(2), rs.getInt(3));
			list.add(nch);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public nhomCauHoi getNhomCauHoi(int maNhomCauHoi){
		ResultSet rs=dal.getResultSet("select * from questiongroup where questionGroupId="+maNhomCauHoi);
		nhomCauHoi nch=new nhomCauHoi();
		try {
			while(rs.next()) {
				nch=new nhomCauHoi(rs.getInt(1), rs.getString(2),rs.getInt(3));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return nch;
	}
}
