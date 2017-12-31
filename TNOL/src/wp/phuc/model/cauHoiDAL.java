package wp.phuc.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import wp.phuc.DAO.cauHoi;
import wp.phuc.DAO.nhomCauHoi;
public class cauHoiDAL {
	DAL dal;
	public cauHoiDAL() {
		dal=new DAL();
	}
	public Integer soLuongCauHoiTheoMaNhomCauHoi(int maNhomCauHoi)
	{
		int soLuong=0;
		for(cauHoi ch:listCauHoi()) {
			if(ch.getNhomCauHoi()==maNhomCauHoi)
			{
				soLuong++;
			}
		}
		return soLuong;
	}
	public ArrayList<cauHoi> listCauHoi(){
		ResultSet rs=dal.getResultSet("select * from question");
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
	public cauHoi cauHoiTheoMaCauHoi(int maCauHoi) {
		ArrayList<cauHoi> listCauHoi=listCauHoi();
		for(cauHoi CH:listCauHoi)
		{
			if(maCauHoi==CH.getMaCauHoi())
			{
				return CH;
			}
		}
		return null;
	}
	public ArrayList<Integer> listQuestionRandom(int soLuongCauHoi, int maNhomCauHoi){
		ResultSet rs=dal.getResultSet("SELECT questionId FROM question where questionGroup="+maNhomCauHoi+" ORDER BY RAND() LIMIT "+soLuongCauHoi+"");
		ArrayList<Integer> list=new ArrayList<>();
		try {
			while(rs.next()) {
				list.add(rs.getInt(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public int maCauHoi() {
		String sql="select max(questionId)as questionID from question";
		DAL dal= new DAL();
		ResultSet rs= dal.getResultSet(sql);
		try {
			rs.next();
			return rs.getInt("questionID");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
	public boolean insertCauHoi(String noiDungCauHoi, int nhomCauHoi, String username, String dapAn1,String dapAn2,String dapAn3,String dapAn4,String dapAnDung) {
		String sql1="insert  into question (questionContent,questionGroup,userId) values (N'"+noiDungCauHoi+"',"+nhomCauHoi+",N'"+username+"')";
		DAL dal=new DAL();
		boolean kq=dal.updateData(sql1);
		if(kq){
			int maCauHoi=maCauHoi();
			switch(dapAnDung) {
			case "1":
				String sql2="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn1+"',"+maCauHoi+",true)";
				dal.updateData(sql2);
				String sql3="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn2+"',"+maCauHoi+",false)";
				dal.updateData(sql3);
				String sql4="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn3+"',"+maCauHoi+",false)";
				dal.updateData(sql4);
				String sql5="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn4+"',"+maCauHoi+",false)";
				dal.updateData(sql5);
				return kq;
			case "2":
				String sql6="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn1+"',"+maCauHoi+",false)";
				dal.updateData(sql6);
				String sql7="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn2+"',"+maCauHoi+",true)";
				dal.updateData(sql7);
				String sql8="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn3+"',"+maCauHoi+",false)";
				dal.updateData(sql8);
				String sql9="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn4+"',"+maCauHoi+",false)";
				dal.updateData(sql9);
				return kq;
			case "3":
				String sql10="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn1+"',"+maCauHoi+",false)";
				dal.updateData(sql10);
				String sql11="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn2+"',"+maCauHoi+",false)";
				dal.updateData(sql11);
				String sql12="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn3+"',"+maCauHoi+",true)";
				dal.updateData(sql12);
				String sql13="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn4+"',"+maCauHoi+",false)";
				dal.updateData(sql13);
				return kq;
			case "4":
				String sql14="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn1+"',"+maCauHoi+",false)";
				dal.updateData(sql14);
				String sql15="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn2+"',"+maCauHoi+",false)";
				dal.updateData(sql15);
				String sql16="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn3+"',"+maCauHoi+",false)";
				dal.updateData(sql16);
				String sql17="insert into question_answer (answerName,questionId,answerConrrect) values (N'"+dapAn4+"',"+maCauHoi+",true)";
				dal.updateData(sql17);
				return kq;
			default :
				return kq;
			}
		}
		return kq;
	}
	
	public boolean deleteCauHoi( int maCauHoi) {
		String sql="delete from question where questionId='"+maCauHoi+"'";
		DAL dal= new DAL();
		return dal.updateData(sql);
	}
	public boolean updateCauHoi( int maCauHoi,String noiDungCauHoi, int nhomCauHoi, String username, int maDapAn1, String dapAn1,int maDapAn2,String dapAn2,int maDapAn3,String dapAn3,int maDapAn4,String dapAn4,String dapAnDung ) {
		String sql1="update question set questionContent=N'"+noiDungCauHoi+"', questionGroup='"+nhomCauHoi+"', userId='"+username+"' where questionId="+maCauHoi+"";
		DAL dal=new DAL();
		boolean kq=dal.updateData(sql1);
		if(kq){
			switch(dapAnDung) {
			case "1":
				String sql2="update question_answer set answerName=N'"+dapAn1+"', questionId="+maCauHoi+",answerConrrect=true where answerId="+maDapAn1+"";
				dal.updateData(sql2);
				String sql3="update question_answer set answerName=N'"+dapAn2+"', questionId="+maCauHoi+",answerConrrect=false where answerId="+maDapAn2+"";
				dal.updateData(sql3);
				String sql4="update question_answer set answerName=N'"+dapAn3+"', questionId="+maCauHoi+",answerConrrect=false where answerId="+maDapAn3+"";
				dal.updateData(sql4);
				String sql5="update question_answer set answerName=N'"+dapAn4+"', questionId="+maCauHoi+",answerConrrect=false where answerId="+maDapAn4+"";
				dal.updateData(sql5);
				return kq;
			case "2":
				String sql6="update question_answer set answerName=N'"+dapAn1+"', questionId="+maCauHoi+",answerConrrect=false where answerId="+maDapAn1+"";
				dal.updateData(sql6);
				String sql7="update question_answer set answerName=N'"+dapAn2+"', questionId="+maCauHoi+",answerConrrect=true where answerId="+maDapAn2+"";
				dal.updateData(sql7);
				String sql8="update question_answer set answerName=N'"+dapAn3+"', questionId="+maCauHoi+",answerConrrect=false where answerId="+maDapAn3+"";
				dal.updateData(sql8);
				String sql9="update question_answer set answerName=N'"+dapAn4+"', questionId="+maCauHoi+",answerConrrect=false where answerId="+maDapAn4+"";
				dal.updateData(sql9);
				return kq;
			case "3":
				String sql10="update question_answer set answerName=N'"+dapAn1+"', questionId="+maCauHoi+",answerConrrect=false where answerId="+maDapAn1+"";
				dal.updateData(sql10);
				String sql11="update question_answer set answerName=N'"+dapAn2+"', questionId="+maCauHoi+",answerConrrect=false where answerId="+maDapAn2+"";
				dal.updateData(sql11);
				String sql12="update question_answer set answerName=N'"+dapAn3+"', questionId="+maCauHoi+",answerConrrect=true where answerId="+maDapAn3+"";
				dal.updateData(sql12);
				String sql13="update question_answer set answerName=N'"+dapAn4+"', questionId="+maCauHoi+",answerConrrect=false where answerId="+maDapAn4+"";
				dal.updateData(sql13);
				return kq;
			case "4":
				String sql14="update question_answer set answerName=N'"+dapAn1+"', questionId="+maCauHoi+",answerConrrect=false where answerId="+maDapAn1+"";
				dal.updateData(sql14);
				String sql15="update question_answer set answerName=N'"+dapAn2+"', questionId="+maCauHoi+",answerConrrect=false where answerId="+maDapAn2+"";
				dal.updateData(sql15);
				String sql16="update question_answer set answerName=N'"+dapAn3+"', questionId="+maCauHoi+",answerConrrect=false where answerId="+maDapAn3+"";
				dal.updateData(sql16);
				String sql17="update question_answer set answerName=N'"+dapAn4+"', questionId="+maCauHoi+",answerConrrect=true where answerId="+maDapAn4+"";
				dal.updateData(sql17);
				return kq;
			default :
				return kq;
			}
		}
		return kq;
	}
	
	
	public static void main(String [] args) {
		cauHoiDAL chDal=new cauHoiDAL();
		System.out.println(chDal.soLuongCauHoiTheoMaNhomCauHoi(24));
	}
}
