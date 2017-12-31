package wp.phuc.DAO;

import java.util.Date;

public class user {
	String username;
	String Password;
	String fullname;
	String sex;
	Date Birthday;
	String Phone;
	String avatar;
	int Role;
	int lopHoc;
	public user() {}
	public user(String username, String password, String fullname, String sex, Date birthday, String phone,
			String avatar, int role,int lopHoc) {
		super();
		this.username = username;
		Password = password;
		this.fullname = fullname;
		this.sex = sex;
		Birthday = birthday;
		Phone = phone;
		this.avatar = avatar;
		Role = role;
		this.lopHoc=lopHoc;
	}
	public int getLopHoc() {
		return lopHoc;
	}
	public void setLopHoc(int lopHoc) {
		this.lopHoc = lopHoc;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return Birthday;
	}
	public void setBirthday(Date birthday) {
		Birthday = birthday;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public int getRole() {
		return Role;
	}
	public void setRole(int role) {
		Role = role;
	}

}
