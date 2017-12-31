package wp.phuc.DAO;

import java.util.Date;

public class thongBao {
	int noticeId;
	String title;
	String noticeContent;
	String enclosedd;
	Date timeNotice;
	String image;
	public thongBao() {}
	public thongBao(int noticeId,String title,String noticeContent,String enclosedd,Date timeNotice,String image) {
		this.noticeId=noticeId;
		this.title=title;
		this.noticeContent=noticeContent;
		this.enclosedd=enclosedd;
		this.timeNotice=timeNotice;
		this.image=image;
	}
	public int getNoticeId() {
		return noticeId;
	}
	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getEnclosedd() {
		return enclosedd;
	}
	public void setEnclosedd(String enclosedd) {
		this.enclosedd = enclosedd;
	}
	public Date getTimeNotice() {
		return timeNotice;
	}
	public void setTimeNotice(Date timeNotice) {
		this.timeNotice = timeNotice;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}
