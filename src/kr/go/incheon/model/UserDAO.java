package kr.go.incheon.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import kr.go.incheon.dto.UserDTO;

public class UserDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;	

	public int Login(UserDTO dto){
		int cnt = 0;
		try {
			con = Maria.getConnection();
			//로그인
			pstmt = con.prepareStatement(Maria.USER_LOGIN);
			pstmt.setString(1, dto.getUsid());
			pstmt.setString(2, dto.getUspw());
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setUsid(rs.getString("usId"));
				dto.setUsname(rs.getString("usName"));
				cnt++;
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
			pstmt.setString(1, dto.getUsid());
			pstmt.setString(2, dto.getUspw());
			pstmt.setString(3, dto.getUsname());
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
	
	public int idCheckPro(String usid) {
		int cnt = 0;
		try {
			con = Maria.getConnection();
			//아이디 확인
			pstmt = con.prepareStatement(Maria.USER_ID_CHECK);
			pstmt.setString(1, usid);
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

		
		public ArrayList<UserDTO> getUserList() {
			ArrayList<UserDTO> userList = new ArrayList<UserDTO>();
			
			try {
				con = Maria.getConnection();
				pstmt = con.prepareStatement(Maria.USER_ALL);
				rs = pstmt.executeQuery();
				//회원목록
				while(rs.next()){
					UserDTO dto = new UserDTO();
					dto.setUsid(rs.getString("usid"));
					dto.setUspw(rs.getString("uspw"));
					dto.setUsname(rs.getString("usname"));
					dto.setEmail(rs.getString("email"));
					dto.setTel(rs.getString("tel"));
					dto.setLevel(rs.getInt("level"));
					dto.setAddress(rs.getString("address"));
					dto.setPoint(rs.getInt("point"));
					dto.setVisited(rs.getInt("visited"));
					dto.setBirth(rs.getString("birth"));
					dto.setRegDate(rs.getString("regdate"));
					System.out.println(dto.getUsid());
					userList.add(dto);
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
				Maria.close(rs, pstmt, con);
			}
			return userList;
		}
		
		
		//회원 정보 보기
		public UserDTO userInfo(String id){
			UserDTO dto = new UserDTO();
			try {
				con = Maria.getConnection();
				//읽은 횟수 증가
				pstmt = con.prepareStatement(Maria.USER_ID_CHECK);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if(rs.next()){
					dto.setUsid(rs.getString("usid"));
					dto.setUspw(rs.getString("uspw"));
					dto.setUsname(rs.getString("name"));
					dto.setEmail(rs.getString("email"));
					dto.setTel(rs.getString("tel"));
					dto.setLevel(rs.getInt("Level"));
					dto.setAddress(rs.getString("address"));
					dto.setPoint(rs.getInt("point"));
					dto.setVisited(rs.getInt("visited"));
					dto.setBirth(rs.getString("birth"));
					dto.setRegDate(rs.getString("regdate"));
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
				Maria.close(rs, pstmt, con);
			}
			return dto;
		}
		
		
}
		


