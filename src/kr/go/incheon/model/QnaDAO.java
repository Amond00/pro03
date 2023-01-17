package kr.go.incheon.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.go.incheon.dto.QnaDTO;

public class QnaDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	//리스트 조회
	public ArrayList<QnaDTO> getQnaList() {
		ArrayList<QnaDTO> qnaList = new ArrayList<QnaDTO>();
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.QNA_SELECT_ALL_Q);
			rs = pstmt.executeQuery();
			while(rs.next()){
				QnaDTO dto = new QnaDTO();
				dto.setNo(rs.getInt("no"));
				dto.setTitle(rs.getString("title"));
				dto.setAuthor(rs.getString("author"));
				dto.setContent(rs.getString("content"));
				dto.setResdate(rs.getString("resdate"));
				dto.setVisited(rs.getInt("visited"));
				qnaList.add(dto);
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
		return qnaList;
	}
	
	public QnaDTO getQna(int no){
		QnaDTO dto = new QnaDTO();
		try {
			con = Maria.getConnection();
			//visitied 증가
			pstmt = con.prepareStatement(Maria.QNA_VISITED_UPDATE);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			pstmt.close();
			//해당 레코드를 검색
			pstmt = con.prepareStatement(Maria.QNA_SELECT_ONE);
			pstmt.setInt(1, no);		
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setNo(rs.getInt("no"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setAuthor(rs.getString("author"));
				dto.setResdate(rs.getString("resdate"));
				dto.setVisited(rs.getInt("visited"));
				dto.setParno(rs.getInt("parno"));
			}
			pstmt.close();
			int parno = dto.getParno();
			pstmt = con.prepareStatement(Maria.QNA_SELECT_A_ONE);
			pstmt.setInt(1, parno);		
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setTitle2(rs.getString("title"));
				dto.setContent2(rs.getString("content"));
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

	
	public int addQna(QnaDTO dto){
		int cnt = 0;
		int no = 0;
		try {
			con = Maria.getConnection();
			//질문 추가
			pstmt = con.prepareStatement(Maria.QNA_INSERT_Q);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setString(3, dto.getAuthor());
			cnt = pstmt.executeUpdate();
			pstmt.close();
			
			pstmt = con.prepareStatement(Maria.QNA_SELECT_Q_P);		
			rs = pstmt.executeQuery();
			if(rs.next()){
				no = rs.getInt("no");
			}
			rs.close();
			pstmt.close();
			
			pstmt = con.prepareStatement(Maria.QNA_INSERT_Q_P);
			pstmt.setInt(1, no);
			pstmt.setInt(2, no);
			pstmt.executeUpdate();
			
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
	
	
	public QnaDTO getQnaA(int no){
		QnaDTO dto = new QnaDTO();
		try {
			con = Maria.getConnection();
			//해당 레코드를 검색
			pstmt = con.prepareStatement(Maria.QNA_SELECT_ONE);
			pstmt.setInt(1, no);		
			rs = pstmt.executeQuery();
			if(rs.next()){
				dto.setNo(rs.getInt("no"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setAuthor(rs.getString("author"));
				dto.setParno(rs.getInt("parno"));
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
	
	
	public int addQnaA(QnaDTO dto){
		int cnt = 0;
		try {
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.QNA_INSERT_A);	
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getParno());
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
			Maria.close(rs, pstmt, con);
		}
		return cnt;
	}
	
	public int updateQna(QnaDTO dto) {
		int cnt = 0;
		try {
			con = Maria.getConnection();
			//글 수정
			pstmt = con.prepareStatement(Maria.QNA_UPDATE_Q);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getNo());
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
	
	public int updateQnaA(QnaDTO dto) {
		int cnt = 0;
		try {
			con = Maria.getConnection();
			//글 수정
			pstmt = con.prepareStatement(Maria.QNA_UPDATE_A);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getNo());
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
	
	
	public int DelQna(QnaDTO dto){
		int cnt = 0;
		try {
			con = Maria.getConnection();
			//글 삭제
			pstmt = con.prepareStatement(Maria.QNA_DELETE);
			pstmt.setInt(1, dto.getParno());
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
	
}
