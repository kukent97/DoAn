package wp.phuc.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import wp.phuc.DAO.user;

//thýòc hiêòn mâìy caìi liên quan ðêìn baÒng user
public class userDAL {
	DAL dal;
	
	public userDAL() {
		dal=new DAL();
	}
	public boolean checkLogin(String username, String pwd, String idRole) {

		ResultSet rs= dal.getResultSet("select * from user where username='"+username+"' and password='"+pwd+"' and role='"+idRole+"'");
		try {
			if(rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception ex){
			ex.printStackTrace();
		}
		return false;  
		
	}
	public boolean insertUser(String username,String password, String fullname, String sex, Date birthday, String phone,String avatar, int role,int lopHoc) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String sql="insert  into user (username,password,fullname,sex,birthday,phone,avatar,role,class) values ('"+username+"','"+password+"',N'"+fullname+"',N'"+sex+"','"+sdf.format(birthday)+"','"+phone+"','"+avatar+"',"+role+","+lopHoc+")";
		DAL dal=new DAL();
		return dal.updateData(sql);
	}
	public boolean updateUser(String username, String password, String fullname, String sex, Date birthday, String phone,String avatar, int role,int lopHoc ) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String sql="update user set Password=N'"+password+"',fullname=N'"+fullname+"',sex=N'"+sex+"',Birthday='"+sdf.format(birthday)+"',Phone='"+phone+"',avatar='"+avatar+"',Role="+role+",class="+lopHoc+" where username='"+username+"'";
		DAL dal= new DAL();
		return dal.updateData(sql);
	}
	public boolean deleteUser(String username) {
		String sql="delete from user where username='"+username+"'";
		DAL dal= new DAL();
		return dal.updateData(sql);
	}
	public user viewInfo(String username){
		ResultSet rs= dal.getResultSet("select * from user where username='"+username+"'");
		user us = null;
		try {
			rs.next();
			us = new user(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), 
							rs.getDate(5), rs.getString(6), rs.getString(7), rs.getInt(8),rs.getInt(9));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return us;
	}
	public ArrayList<user> listUser() {
		ResultSet rs=dal.getResultSet("select * from user");
		ArrayList<user> list = new ArrayList<user>();
		try {
			while(rs.next()) {
				user us = new user(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), 
						rs.getDate(5), rs.getString(6), rs.getString(7), rs.getInt(8),rs.getInt(9));
				list.add(us);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<user> listUser1() {
		ResultSet rs=dal.getResultSet("select * from user where Role=1");
		ArrayList<user> list = new ArrayList<user>();
		try {
			while(rs.next()) {
				user us = new user(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), 
						rs.getDate(5), rs.getString(6), rs.getString(7), rs.getInt(8),rs.getInt(9));
				list.add(us);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<user> listUser2() {
		ResultSet rs=dal.getResultSet("select * from user where Role=2");
		ArrayList<user> list = new ArrayList<user>();
		try {
			while(rs.next()) {
				user us = new user(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), 
						rs.getDate(5), rs.getString(6), rs.getString(7), rs.getInt(8),rs.getInt(9));
				list.add(us);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<user> listUser3() {
		ResultSet rs=dal.getResultSet("select * from user where Role=3");
		ArrayList<user> list = new ArrayList<user>();
		try {
			while(rs.next()) {
				user us = new user(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), 
						rs.getDate(5), rs.getString(6), rs.getString(7), rs.getInt(8),rs.getInt(9));
				list.add(us);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<user> listUser4() {
		ResultSet rs=dal.getResultSet("select * from user where Role=4");
		ArrayList<user> list = new ArrayList<user>();
		try {
			while(rs.next()) {
				user us = new user(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), 
						rs.getDate(5), rs.getString(6), rs.getString(7), rs.getInt(8),rs.getInt(9));
				list.add(us);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public boolean updatePassword(String username, String password, String fullname, String sex, Date birthday, String phone,String avatar, int role ) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String sql="update user set Password=N'"+password+"',fullname=N'"+fullname+"',sex=N'"+sex+"',Birthday='"+sdf.format(birthday)+"',Phone='"+phone+"',avatar='"+avatar+"',Role="+role+" where username='"+username+"'";
		DAL dal= new DAL();
		return dal.updateData(sql);
	}
	public static void main(String [] args) {
		userDAL usDAL = new userDAL();
		Date ngaySinh;
		try {
			ngaySinh = new SimpleDateFormat("yyyy-MM-dd").parse("2003-11-02");
		} catch (ParseException e) {
			ngaySinh = null;
			e.printStackTrace();
		}
		usDAL.insertUser("1510000", "123", "NguyêÞn Thiò HiêÌn1122", "NýÞ", ngaySinh, "0991578455", "image/anh3.jpg", 2,-1);
	}
}
