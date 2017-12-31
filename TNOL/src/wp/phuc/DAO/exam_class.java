package wp.phuc.DAO;

public class exam_class {
	int maKyThi;
	int maLopHoc;
	public exam_class() {}
	public exam_class(int maKyThi, int maLopHoc) {
		this.maKyThi=maKyThi;
		this.maLopHoc=maLopHoc;
	}
	public int getMaKyThi() {
		return maKyThi;
	}
	public void setMaKyThi(int maKyThi) {
		this.maKyThi = maKyThi;
	}
	public int getMaLopHoc() {
		return maLopHoc;
	}
	public void setMaLopHoc(int maLopHoc) {
		this.maLopHoc = maLopHoc;
	}
	
}
