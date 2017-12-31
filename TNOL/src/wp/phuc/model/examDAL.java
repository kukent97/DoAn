package wp.phuc.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import wp.phuc.DAO.exam;
public class examDAL {
	DAL dal;
	public examDAL() {
		dal=new DAL();
	}
	public exam examTheoExamId( int examId){
		ResultSet rs= dal.getResultSet("select * from exam where examId="+examId+"");
		exam exam1 = null;
		try {
			rs.next();
			exam1 = new exam(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDate(4), rs.getString(5));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return exam1;
	}
	public int thoiGianThi( int examId){
		ResultSet rs= dal.getResultSet("select textTime from exam, text where examId="+examId+" and exam.textId=text.textId");
		int thoiGian = -1;
		try {
			rs.next();
			thoiGian = rs.getInt("textTime");
			return thoiGian;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return thoiGian;
	}
	public boolean insertKyThi(  String tenKyThi, int maDeThi, Date ngayThi, String username) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String sql="insert  into exam (examName,textId,examDate,username) values (N'"+tenKyThi+"',"+maDeThi+",'"+sdf.format(ngayThi)+"',N'"+username+"' )";
		DAL dal=new DAL();
		return dal.updateData(sql);
	}
	
	public boolean deleteKyThi( int maKyThi) {
		String sql="delete from exam where examId="+maKyThi+"";
		DAL dal= new DAL();
		return dal.updateData(sql);
		
	}
	
	public boolean updateKyThi(int maKyThi,String tenKyThi,int maDeThi,Date ngayThi,String nguoiTaoKyThi ) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String sql="update exam set examName='"+tenKyThi+"',textId="+maDeThi+",examDate='"+sdf.format(ngayThi)+"',username='"+nguoiTaoKyThi+"'  where examId="+maKyThi+"";
		DAL dal= new DAL();
		return dal.updateData(sql);
	}
	
	public ArrayList<exam> listExam(){
		ResultSet rs=dal.getResultSet("select * from exam");
		ArrayList<exam> list=new ArrayList<>();
		try {
			while(rs.next()) {
				exam kyThi=new exam(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getDate(4),rs.getString(5));
				list.add(kyThi);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public static void main(String[] args) {
		examDAL examDal=new examDAL();
		System.out.println(examDal.thoiGianThi(1));
	}
}
