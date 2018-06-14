package board.dto;

public class BoardDTO {
	//seq, title, password, contents, writedate, viewcount, ip	
	private int seq;
	private String title;
	private String password;
	private String contents;
	private String writedate;
	private int viewcount;
	private String ip;

	public BoardDTO() {}
	
	public BoardDTO(int seq, String title, String password, String contents, String writedate, int viewcount,
			String ip) {
		super();
		this.seq = seq;
		this.title = title;
		this.password = password;
		this.contents = contents;
		this.writedate = writedate;
		this.viewcount = viewcount;
		this.ip = ip;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getWritedate() {
		return writedate;
	}

	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}

	public int getViewcount() {
		return viewcount;
	}

	public void setViewcount(int viewcount) {
		this.viewcount = viewcount;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}
	
	
}
