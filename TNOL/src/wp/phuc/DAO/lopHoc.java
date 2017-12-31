package wp.phuc.DAO;

public class lopHoc {
	int maLopHoc;
	String tenLopHoc;
	public lopHoc() {}
	public lopHoc(int maLopHoc,String tenLopHoc) {
		this.maLopHoc=maLopHoc;
		this.tenLopHoc=tenLopHoc;
	}
	public int getMaLopHoc() {
		return maLopHoc;
	}
	public void setMaLopHoc(int maLopHoc) {
		this.maLopHoc = maLopHoc;
	}
	public String getTenLopHoc() {
		return tenLopHoc;
	}
	public void setTenLopHoc(String tenLopHoc) {
		this.tenLopHoc = tenLopHoc;
	}
}
