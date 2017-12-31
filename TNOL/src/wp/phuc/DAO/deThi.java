package wp.phuc.DAO;


public class deThi {
	int maDeThi;
	String tenDeThi;
	int thoiGianLamBai;
	String nguoiTaoDeThi;
	public deThi() {}
	public deThi(int maDeThi,String tenDeThi,int thoiGianLamBai,String nguoiTaoDeThi) {
		this.maDeThi=maDeThi;
		this.tenDeThi=tenDeThi;
		this.thoiGianLamBai=thoiGianLamBai;
		this.nguoiTaoDeThi=nguoiTaoDeThi;
	}
	public int getMaDeThi() {
		return maDeThi;
	}
	public void setMaDeThi(int maDeThi) {
		this.maDeThi = maDeThi;
	}
	public String getTenDeThi() {
		return tenDeThi;
	}
	public void setTenDeThi(String tenDeThi) {
		this.tenDeThi = tenDeThi;
	}
	public int getThoiGianLamBai() {
		return thoiGianLamBai;
	}
	public void setThoiGianLamBai(int thoiGianLamBai) {
		this.thoiGianLamBai = thoiGianLamBai;
	}
	public String getNguoiTaoDeThi() {
		return nguoiTaoDeThi;
	}
	public void setNguoiTaoDeThi(String nguoiTaoDeThi) {
		this.nguoiTaoDeThi = nguoiTaoDeThi;
	}
	
	
	
}
