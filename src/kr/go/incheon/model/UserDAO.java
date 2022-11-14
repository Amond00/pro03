package kr.go.incheon.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import kr.go.incheon.dto.NoticeDTO;
import kr.go.incheon.dto.UserDTO;

public class UserDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	String sql = "";	

	public int Login(UserDTO dto){
		int cnt = 0;
		try {
			con = Maria.getConnection();
			//로그인
			pstmt = con.prepareStatement(Maria.USER_LOGIN);
			pstmt.setString(1, dto.getUsId());
			pstmt.setString(2, dto.getUsPw());
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setUsName(rs.getString("usName"));
				System.out.println(rs.getString("usName"));

			}
			
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(pstmt, con);
		}
		return cnt;
	}
	
	public int addUser(UserDTO dto) {
		int cnt = 0;
		try {
			con = Maria.getConnection();
			//회원가입
			pstmt = con.prepareStatement(Maria.USER_JOIN);
			pstmt.setString(1, dto.getUsId());
			pstmt.setString(2, dto.getUsPw());
			pstmt.setString(3, dto.getUsName());
			pstmt.setString(4, dto.getBirth());
			pstmt.setString(5, dto.getEmail());
			pstmt.setString(6, dto.getTel());
			pstmt.setString(7, dto.getAddress());
			cnt = pstmt.executeUpdate();
			
		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(pstmt, con);
		}
		return cnt;
	}
	
	public int idCheckPro(String id) {
		int cnt = 0;
		try {
			con = Maria.getConnection();
			//아이디 확인
			pstmt = con.prepareStatement(Maria.USER_ID_CHECK);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

		} catch(ClassNotFoundException e){
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e){
			System.out.println("SQL 구문이 처리되지 못했습니다.");
			e.printStackTrace();
		} catch(Exception e){
			System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
		} finally {
			Maria.close(pstmt, con);
		}
		return cnt;
	}
	
}


