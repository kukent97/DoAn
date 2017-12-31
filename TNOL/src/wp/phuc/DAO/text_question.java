package wp.phuc.DAO;

public class text_question {
	int maCauHoi;
	int maDeThi;
	public text_question() {}
	public text_question(int maCauHoi,int maDeThi) {
		this.maCauHoi=maCauHoi;
		this.maDeThi=maDeThi;
	}
	public int getMaCauHoi() {
		return maCauHoi;
	}
	public void setMaCauHoi(int maCauHoi) {
		this.maCauHoi = maCauHoi;
	}
	public int getMaDeThi() {
		return maDeThi;
	}
	public void setMaDeThi(int maDeThi) {
		this.maDeThi = maDeThi;
	}
}
