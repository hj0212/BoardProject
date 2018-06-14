package board.dto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
	private Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String dbURL = "jdbc:oracle:thin:@localhost:1521:XE";
		String dbId = "kh";
		String dbPw = "kh";
		return DriverManager.getConnection(dbURL,dbId,dbPw);
	}
	
	public int writeArticle(BoardDTO dto) throws Exception{
		Connection conn = this.getConnection();
		String sql = "INSERT INTO BOARDDB VALUES(BOARD_SEQ.NEXTVAL,?,?,?,sysdate,0,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getTitle());
		pstmt.setString(2, dto.getPassword());
		pstmt.setString(3, dto.getContents());
		pstmt.setString(4, dto.getIp());
		
		int result = pstmt.executeUpdate();
		
		conn.commit();
		pstmt.close();
		conn.close();
		return result;
	}
	
	public BoardDTO readArticle(int seq) throws Exception{
		Connection conn = this.getConnection();
		BoardDTO tmp = new BoardDTO();
		String sql = "SELECT * FROM BOARDDB WHERE SEQ = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, seq);
		
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			tmp.setSeq(rs.getInt("SEQ"));
			tmp.setTitle(rs.getString("TITLE"));
			tmp.setPassword(rs.getString("PASSWORD"));
			tmp.setContents(rs.getString("CONTENTS"));
			tmp.setWritedate(rs.getString("WRITEDATE"));
			tmp.setViewcount(rs.getInt("VIEWCOUNT"));
			tmp.setIp(rs.getString("IP"));
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		return tmp;
	}
	
	public List<BoardDTO> viewList() throws Exception{
		Connection conn = this.getConnection();
		List<BoardDTO> tmpList = new ArrayList<>();
		String sql = "SELECT * FROM BOARDDB ORDER BY SEQ DESC";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			BoardDTO tmp = new BoardDTO();
			tmp.setSeq(rs.getInt("SEQ"));
			tmp.setTitle(rs.getString("TITLE"));
			tmp.setPassword(rs.getString("PASSWORD"));
			tmp.setContents(rs.getString("CONTENTS"));
			tmp.setWritedate(rs.getString("WRITEDATE"));
			tmp.setViewcount(rs.getInt("VIEWCOUNT"));
			tmp.setIp(rs.getString("IP"));
			tmpList.add(tmp);
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		return tmpList;
	}
}
