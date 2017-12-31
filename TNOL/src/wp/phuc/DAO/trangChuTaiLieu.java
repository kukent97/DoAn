package wp.phuc.DAO;

public class trangChuTaiLieu {

	int documentId;
	String image;
	String title;
	String link;
	public trangChuTaiLieu() {}
	public trangChuTaiLieu(int documentId,String image,String title,String link) {
		this.documentId=documentId;
		this.image=image;
		this.title=title;
		this.link=link;
	}
	public int getDocumentId() {
		return documentId;
	}
	public void setDocumentId(int documentId) {
		this.documentId = documentId;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	
}
