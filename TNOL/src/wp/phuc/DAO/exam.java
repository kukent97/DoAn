package wp.phuc.DAO;

import java.util.Date;

public class exam {
	int maKyThi;
	String tenKyThi;
	int maDeThi;
	Date ngayThi;
	String nguoiTaoKyThi;
	public exam() {}
	public exam(int maKyThi, String tenKyThi,int maDeThi,Date ngayThi,String nguoiTaoKyThi) {
		this.maKyThi=maKyThi;
		this.tenKyThi=tenKyThi;
		this.maDeThi=maDeThi;
		this.ngayThi=ngayThi;
		this.nguoiTaoKyThi=nguoiTaoKyThi;
	}
	public String getNguoiTaoKyThi() {
		return nguoiTaoKyThi;
	}
	public void setNguoiTaoKyThi(String nguoiTaoKyThi) {
		this.nguoiTaoKyThi = nguoiTaoKyThi;
	}
	public int getMaKyThi() {
		return maKyThi;
	}
	public void setMaKyThi(int maKyThi) {
		this.maKyThi = maKyThi;
	}
	public String getTenKyThi() {
		return tenKyThi;
	}
	public void setTenKyThi(String tenKyThi) {
		this.tenKyThi = tenKyThi;
	}
	public int getMaDeThi() {
		return maDeThi;
	}
	public void setMaDeThi(int maDeThi) {
		this.maDeThi = maDeThi;
	}
	public Date getNgayThi() {
		return ngayThi;
	}
	public void setNgayThi(Date ngayThi) {
		this.ngayThi = ngayThi;
	}
}
