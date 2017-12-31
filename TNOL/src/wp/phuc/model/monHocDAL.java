package wp.phuc.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import wp.phuc.DAO.deThi;
import wp.phuc.DAO.monhoc;
import wp.phuc.DAO.nhomCauHoi;

public class monHocDAL {
	DAL dal;
	public monHocDAL() {
		dal=new DAL(); 
	}
	public boolean insertMonHoc(  String tenMonHoc) {
		String sql="insert  into subject (subjectName) values (N'"+tenMonHoc+"')";
		DAL dal=new DAL();
		return dal.updateData(sql);
	}
	
	public boolean deleteMonHoc( int maMonHoc) {
		String sql="delete from subject where subjectId='"+maMonHoc+"'";
		DAL dal= new DAL();
		return dal.updateData(sql);
		
	}
	
	public boolean EditMonHoc(int maMonHoc, String tenMonHoc ) {
		String sql="update subject set subjectId="+maMonHoc+", subjectName=N'"+tenMonHoc+"' where subjectId="+maMonHoc+"";
		DAL dal= new DAL();
		return dal.updateData(sql);
	}
	public int getMonHocTheoMaNhomCauHoi(int maNhomCauHoi){
		nhomCauHoiDAL nchDal=new nhomCauHoiDAL();
		ArrayList<nhomCauHoi> listNhomCauHoi=nchDal.listNhomCauHoi();
		for(nhomCauHoi nch:listNhomCauHoi)
		{
			if(maNhomCauHoi==nch.getMaNhomCauHoi())
			{
				return nch.getMonHoc();
			}
		}
		return -1;
	}
	public ArrayList<monhoc> listMonHoc(){
		ResultSet rs=dal.getResultSet("select * from subject");
		ArrayList<monhoc> list=new ArrayList<>();
		try {
			while(rs.next()) {
				monhoc mh=new monhoc(rs.getInt(1), rs.getString(2));
				list.add(mh);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public static void main(String[] args) {
		monHocDAL dal=new monHocDAL();
		//dal.insertMonHoc(10, "1");
		dal.insertMonHoc("hhh5555555");
		
	}
}
