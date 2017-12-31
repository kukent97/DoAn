package wp.phuc.DAO;

public class diem {
	String username;
	int maMonHoc;
	float diem;
	int kyThi;
	public diem() {}
	public diem(String username,int maMonHoc, float diem, int kyThi) {
		this.username=username;
		this.maMonHoc=maMonHoc;
		this.diem=diem;
		this.kyThi=kyThi;
	}
	public int getKyThi() {
		return kyThi;
	}
	public void setKyThi(int kyThi) {
		this.kyThi = kyThi;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getMaMonHoc() {
		return maMonHoc;
	}
	public void setMaMonHoc(int maMonHoc) {
		this.maMonHoc = maMonHoc;
	}
	public float getDiem() {
		return diem;
	}
	public void setDiem(float diem) {
		this.diem = diem;
	}
	
}
