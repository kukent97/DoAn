package wp.phuc.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import wp.phuc.DAO.lopHoc;
import wp.phuc.DAO.thongBao;
import wp.phuc.DAO.trangChuTaiLieu;

public class trangChuDAL {
	DAL dal;
	public trangChuDAL() {
		dal=new DAL(); 
	}
	public void insertTaiLieu() {}
	public void deleteTaiLieu() {}
	public void EditTaiLieu() {}
	public ArrayList<trangChuTaiLieu> listTaiLieu(){
		ResultSet rs1=dal.getResultSet("select * from document");
		ArrayList<trangChuTaiLieu> listTaiLieu=new ArrayList<>();
		try {
			while(rs1.next()) {
				trangChuTaiLieu tl=new trangChuTaiLieu(rs1.getInt(1), rs1.getString(2), rs1.getString(3), rs1.getString(4));
				listTaiLieu.add(tl);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listTaiLieu;
	}
	public boolean insertTaiLieu(String tenTaiLieu,String linkDinhKem,String anh) {
		String sql="insert into document (image,title,link) values ('"+anh+"','"+tenTaiLieu+"','"+linkDinhKem+"')";
		DAL dal=new DAL();
		return dal.updateData(sql);
	}
	
	public boolean deleteTaiLieu( int maTaiLieu) {
		String sql="delete from document where documentId="+maTaiLieu;
		DAL dal= new DAL();
		return dal.updateData(sql);
		
	}
	public boolean updateTaiLieu(int maTaiLieu, String tenTaiLieu, String linkDinhKem, String anh) {
		String sql="update document set image='"+anh+"',title='"+tenTaiLieu+"',link='"+linkDinhKem+"' where documentId="+maTaiLieu;
		DAL dal= new DAL();
		return dal.updateData(sql);
	}
	public trangChuTaiLieu getTaiLieu(int maTaiLieu) {
		ArrayList<trangChuTaiLieu> listTaiLieu=listTaiLieu();
		for(trangChuTaiLieu TL:listTaiLieu)
		{
			if(maTaiLieu==TL.getDocumentId())
			{
				return TL;
			}
		}
		return null;
	}
	public ArrayList<thongBao> listThongBao(){
		ResultSet rs2=dal.getResultSet("select * from notice");
		ArrayList<thongBao> listThongBao=new ArrayList<>();
		try {
			while(rs2.next()) {
				thongBao tb=new thongBao(rs2.getInt(1), rs2.getString(2), rs2.getString(3), rs2.getString(4),rs2.getDate(5),rs2.getString(6));
				listThongBao.add(tb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listThongBao;
	}
	public boolean insertThongBao(String tieuDe, String noiDungThongBao, String tepDinhKem, Date ngayThongBao, String image) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String sql="insert into notice (title,noticeContent,enclosedd,timeNotice,image) values ('"+tieuDe+"','"+noiDungThongBao+"','"+tepDinhKem+"','"+sdf.format(ngayThongBao)+"','"+image+"')";
		DAL dal=new DAL();
		return dal.updateData(sql);
	}
	
	public boolean deleteThongBao( int maThongBao) {
		String sql="delete from notice where noticeId='"+maThongBao+"'";
		DAL dal= new DAL();
		return dal.updateData(sql);
		
	}
	public boolean updateThongBao(int maThongBao, String tieuDe, String noiDung, String dinhKem, Date thoiGian, String anh) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String sql="update notice set title='"+tieuDe+"',noticeContent='"+noiDung+"',enclosedd='"+dinhKem+"',timeNotice='"+sdf.format(thoiGian)+"',image='"+anh+"' where noticeId="+maThongBao+"";
		DAL dal= new DAL();
		return dal.updateData(sql);
	}
	public thongBao getThongBao(int maThongBao) {
		ArrayList<thongBao> listThongBaos=listThongBao();
		for(thongBao TB:listThongBaos)
		{
			if(maThongBao==TB.getNoticeId())
			{
				return TB;
			}
		}
		return null;
	}
	public static void main(String []args) {
		trangChuDAL tcDal=new trangChuDAL();
		Date ngaySinh;
		try {
			ngaySinh = new SimpleDateFormat("yyyy-MM-dd").parse("2003-11-02");
		} catch (ParseException e) {
			ngaySinh = null;
			e.printStackTrace();
		}
		tcDal.insertThongBao("15110201", "123", "Ng", ngaySinh,  "image/anh3.jpg");
	}
}
