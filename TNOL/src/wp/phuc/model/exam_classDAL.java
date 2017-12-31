package wp.phuc.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import wp.phuc.DAO.exam_class;

public class exam_classDAL {
	DAL dal;
	public exam_classDAL() {
		dal=new DAL();
	}
	public int maKyThiMax() {
		String sql="select max(examId)as examMax from exam";
		DAL dal= new DAL();
		ResultSet rs= dal.getResultSet(sql);
		try {
			rs.next();
			return rs.getInt("examMax");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}
	public boolean insertExam_class(int maKyThi,int maLop) {
		String sql="insert  into exam_class (examId,classId) values ("+maKyThi+","+maLop+")";
		DAL dal=new DAL();
		return dal.updateData(sql);
	}
	public boolean updateExam_class(int maKyThi,int maLop) {
		String sql="update exam_class set examId="+maKyThi+", classId="+maLop+"";
		DAL dal=new DAL();
		return dal.updateData(sql);
	}
	public boolean deleteExam_class(int maKyThi) {
		String sql="delete from exam_class where examId="+maKyThi+"";
		DAL dal=new DAL();
		return dal.updateData(sql);
	}
	public ArrayList<exam_class> listExam_class(){
		ResultSet rs=dal.getResultSet("select * from exam_class");
		ArrayList<exam_class> list=new ArrayList<>();
		try {
			while(rs.next()) {
				exam_class kyThi=new exam_class(rs.getInt(1),  rs.getInt(2));
				list.add(kyThi);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
