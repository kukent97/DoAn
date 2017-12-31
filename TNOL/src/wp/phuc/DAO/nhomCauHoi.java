package wp.phuc.DAO;

public class nhomCauHoi {
	int maNhomCauHoi;
	String tenNhomCauHoi;
	int monHoc;
	public nhomCauHoi() {}
	public nhomCauHoi(int maNhomCauHoi,String tenNhomCauHoi, int monHoc) {
		this.maNhomCauHoi=maNhomCauHoi;
		this.tenNhomCauHoi=tenNhomCauHoi;
		this.monHoc=monHoc;
	}
	public int getMonHoc() {
		return monHoc;
	}
	public void setMonHoc(int monHoc) {
		this.monHoc = monHoc;
	}
	public int getMaNhomCauHoi() {
		return maNhomCauHoi;
	}
	public void setMaNhomCauHoi(int maNhomCauHoi) {
		this.maNhomCauHoi = maNhomCauHoi;
	}
	public String getTenNhomCauHoi() {
		return tenNhomCauHoi;
	}
	public void setTenNhomCauHoi(String tenNhomCauHoi) {
		this.tenNhomCauHoi = tenNhomCauHoi;
	}
}
