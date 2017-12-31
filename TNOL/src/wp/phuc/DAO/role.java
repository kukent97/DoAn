package wp.phuc.DAO;

public class role {
	int idRole;
	String roleName;
	public role() {}
	public role(int idRole,	String roleName) {
		this.idRole=idRole;
		this.roleName=roleName;
	}
	public int getIdRole() {
		return idRole;
	}
	public void setIdRole(int idRole) {
		this.idRole = idRole;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
}
