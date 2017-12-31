package wp.phuc.DAO;

public class dapAn {
	int maDapAn;
	String tenDapAn;
	int maCauHoi;
	boolean dapAnDung;
	public dapAn() {}
	public dapAn(int maDapAn,String tenDapAn,int maCauHoi,boolean dapAnDung) {
		this.maDapAn=maDapAn;
		this.tenDapAn=tenDapAn;
		this.maCauHoi=maCauHoi;
		this.dapAnDung=dapAnDung;
	}
	public int getMaDapAn() {
		return maDapAn;
	}
	public void setMaDapAn(int maDapAn) {
		this.maDapAn = maDapAn;
	}
	public String getTenDapAn() {
		return tenDapAn;
	}
	public void setTenDapAn(String tenDapAn) {
		this.tenDapAn = tenDapAn;
	}
	public int getMaCauHoi() {
		return maCauHoi;
	}
	public void setMaCauHoi(int maCauHoi) {
		this.maCauHoi = maCauHoi;
	}
	public boolean isDapAnDung() {
		return dapAnDung;
	}
	public void setDapAnDung(boolean dapAnDung) {
		this.dapAnDung = dapAnDung;
	}
	
}
