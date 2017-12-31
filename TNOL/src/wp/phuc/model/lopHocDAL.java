package wp.phuc.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import wp.phuc.DAO.cauHoi;
import wp.phuc.DAO.lopHoc;

public class lopHocDAL {
	DAL dal;
	public lopHocDAL() {
		dal=new DAL();
	}
	public lopHoc getLopHoc(int maLopHoc) {
		ArrayList<lopHoc> listLopHoc=listLopHoc();
		for(lopHoc CH:listLopHoc)
		{
			if(maLopHoc==CH.getMaLopHoc())
			{
				return CH;
			}
		}
		return null;
	}
	public ArrayList<lopHoc> listLopHoc(){
		ResultSet rs=dal.getResultSet("select * from class");
		ArrayList<lopHoc> list=new ArrayList<>();
		try {
			while(rs.next()) {
				lopHoc lh=new lopHoc(rs.getInt(1), rs.getString(2));
				list.add(lh);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<lopHoc> listLopHocTheoMaKyThi(int maKyThi){
		ResultSet rs=dal.getResultSet("select * from class,exam_class where exam_class.classId=class.classId and exam_class.examId="+maKyThi+"");
		ArrayList<lopHoc> list=new ArrayList<>();
		try {
			while(rs.next()) {
				lopHoc lh=new lopHoc(rs.getInt(1), rs.getString(2));
				list.add(lh);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
