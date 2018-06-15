package member.dto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	private Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String dbURL = "jdbc:oracle:thin:@localhost:1521:XE";
		String dbId = "kh";
		String dbPw = "kh";
		return DriverManager.getConnection(dbURL,dbId,dbPw);
	}
	
	public int addMember(MemberDTO dto) throws Exception{
		Connection conn = this.getConnection();
		String sql = "INSERT INTO memberdb VALUES(?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = null;
		pstmt.setString(1, dto.getId());
		pstmt.setString(2, dto.getPw());
		pstmt.setString(3, dto.getName());
		pstmt.setString(4, dto.getEmail());
		
		int result = pstmt.executeUpdate();		
		conn.commit();
		pstmt.close();
		conn.close();
		return result;		
	}
	
}