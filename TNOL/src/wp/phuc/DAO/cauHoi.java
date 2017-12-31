package wp.phuc.DAO;

public class cauHoi {
	int maCauHoi;
	String noiDungCauHoi;
	int nhomCauHoi;
	String userId;
	public cauHoi() {}
	public cauHoi(int maCauHoi,String noiDungCauHoi,int nhomCauHoi,String userId) {
		this.maCauHoi=maCauHoi;
		this.noiDungCauHoi=noiDungCauHoi;
		this.nhomCauHoi=nhomCauHoi;
		this.userId=userId;
	}
	public int getMaCauHoi() {
		return maCauHoi;
	}
	public void setMaCauHoi(int maCauHoi) {
		this.maCauHoi = maCauHoi;
	}
	public String getNoiDungCauHoi() {
		return noiDungCauHoi;
	}
	public void setNoiDungCauHoi(String noiDungCauHoi) {
		this.noiDungCauHoi = noiDungCauHoi;
	}
	public int getNhomCauHoi() {
		return nhomCauHoi;
	}
	public void setNhomCauHoi(int nhomCauHoi) {
		this.nhomCauHoi = nhomCauHoi;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
}
