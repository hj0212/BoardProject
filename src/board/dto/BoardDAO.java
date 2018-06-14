package board.dto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

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
}
