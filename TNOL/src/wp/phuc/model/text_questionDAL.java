package wp.phuc.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import wp.phuc.DAO.cauHoi;
import wp.phuc.DAO.dapAn;

public class text_questionDAL {
	DAL dal;
	public text_questionDAL() {
		dal=new DAL();
	}
	public int maDeThiMax() {
		String sql="select max(textId)as textMax from text";
		DAL dal= new DAL();
		ResultSet rs= dal.getResultSet(sql);
		try {
			rs.next();
			return rs.getInt("textMax");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return -1;
	}
	public boolean insertText_question(int maCauHoi,int maDeThi) {
		String sql="insert  into text_question (questionId,textId) values ("+maCauHoi+","+maDeThi+")";
		DAL dal=new DAL();
		return dal.updateData(sql);
	}
	public boolean deleteText_questionToTextId(int maDeThi) {
		String sql="delete from text_question where textId="+maDeThi+"";
		DAL dal=new DAL();
		return dal.updateData(sql);
	}
	public ArrayList<cauHoi> listTextQuestion(int maDeThi){
		ResultSet rs=dal.getResultSet("SELECT * FROM question INNER JOIN text_question ON question.questionId=text_question.questionId WHERE '"+maDeThi+"' =text_question.textId");
		ArrayList<cauHoi> list=new ArrayList<>();
		try {
			while(rs.next()) {
				cauHoi ch=new cauHoi(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4));
				list.add(ch);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}	
	public ArrayList<dapAn> listDapAnTheoMaCauHoi (int maCauHoi){
		ArrayList<dapAn> listDapAn=new ArrayList<>();
		ResultSet rs=dal.getResultSet("SELECT * FROM question_answer WHERE questionId="+maCauHoi);
		try {
			while(rs.next()) {
				dapAn da=new dapAn(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getBoolean(4));
				listDapAn.add(da);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listDapAn;
	}	
	
	
	public static void main(String []args) {
		text_questionDAL tcDal=new text_questionDAL();
		ArrayList<cauHoi> listTaiLieu=tcDal.listTextQuestion(1);
		cauHoi phuc=listTaiLieu.get(1);
		System.out.println(phuc.getMaCauHoi());
	}
}
