package member.dto;

public class MemberDTO {
	private String id;
	private String pw;
	private String name;
	private String email;
	private String last_modified;
	
	public MemberDTO() {}
	public MemberDTO(String id, String name, String email) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
	}
	public MemberDTO(String id, String pw, String name, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
	}


	public MemberDTO(String id, String pw, String name, String email, String last_modified) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.last_modified = last_modified;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	public String getLast_modified() {
		return last_modified;
	}
	public void setLast_modified(String last_modified) {
		this.last_modified = last_modified;
	}
}
