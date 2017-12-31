package wp.phuc.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import wp.phuc.DAO.cauHoi;
import wp.phuc.DAO.deThi;
import wp.phuc.DAO.nhomCauHoi;

public class deThiDAL {
	DAL dal;
	public deThiDAL() {
		dal=new DAL();
	}
	public boolean insertDeThi(String tenDeThi, int thoiGianThi, String username) {
		String sql="insert  into text (textName,textTime,userId) values (N'"+tenDeThi+"',"+thoiGianThi+",N'"+username+"')";
		DAL dal=new DAL();
		return dal.updateData(sql);
	}
	
	public boolean deleteDeThi( int maDeThi) {
		String sql="delete from text where textId='"+maDeThi+"'";
		DAL dal= new DAL();
		return dal.updateData(sql);
		
	}
	public boolean uploadDeThi(int maDeThi, String tenDeThi, int thoiGianThi, String username) {
		String sql="update text set textName='"+tenDeThi+"',textTime="+thoiGianThi+",userId='"+username+"' where textId="+maDeThi+"";
		DAL dal= new DAL();
		return dal.updateData(sql);
	}
	public ArrayList<deThi> listDeThi(){
		ResultSet rs=dal.getResultSet("select * from text");
		ArrayList<deThi> list=new ArrayList<>();
		try {
			while(rs.next()) {
			deThi dt=new deThi(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4));
			list.add(dt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public deThi getDeThi(int maDeThi){
		ArrayList<deThi> listDeThi=listDeThi();
		for(deThi DT:listDeThi)
		{
			if(maDeThi==DT.getMaDeThi())
			{
				return DT;
			}
		}
		return null;
	}
	public Map<nhomCauHoi,Integer> mapNhomCauHoi(int maDeThi){
		Map<nhomCauHoi,Integer> map=new HashMap<nhomCauHoi,Integer>();
		text_questionDAL text_questionDal=new text_questionDAL();
		nhomCauHoiDAL nchDal=new nhomCauHoiDAL();
		ArrayList<cauHoi> listCauHoiTheoMaDeThi=text_questionDal.listTextQuestion(maDeThi);
		for (cauHoi cauHoi : listCauHoiTheoMaDeThi) {
			nhomCauHoi nch=nchDal.getNhomCauHoi(cauHoi.getNhomCauHoi());
			int i=0;
			List<nhomCauHoi> listNCH = new ArrayList<nhomCauHoi>();
			Map<nhomCauHoi,Integer> listNCH2 = new HashMap<nhomCauHoi,Integer>();
			boolean b=false;
			for(nhomCauHoi nch1:map.keySet()) {
				if(nch1.getMaNhomCauHoi()==nch.getMaNhomCauHoi())
				{
					i=map.get(nch1);
					i++;
					listNCH.add(nch1);
					listNCH2.put(nch,i);
					b=true;
				}
			}
			for(nhomCauHoi nch2 : listNCH) {
				map.remove(nch2);
			}
			for(nhomCauHoi n : listNCH2.keySet()) {
				map.put(n,listNCH2.get(n));
			}
			if(!b)
			{
				map.put(nch, 1);
			}
		}
		return map;
	}
	public static void main(String [] args) {
		deThiDAL dtDal=new deThiDAL();
		boolean i=dtDal.uploadDeThi(17, "ggg", 50, "15110201");
		System.out.println(i);
	}
}
