package kr.go.incheon.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import kr.go.incheon.dto.TourDTO;

public class TourDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public ArrayList<TourDTO> getTourList() {
		ArrayList<TourDTO> TourList = new ArrayList<TourDTO>();
		try {
			TourDTO dto = new TourDTO();
			int tourno = dto.getTourno();
			con = Maria.getConnection();
			pstmt = con.prepareStatement(Maria.TOUR_SELECT_ONE);
			rs = pstmt.executeQuery();
			pstmt.setInt(tourno, tourno);
			
			while(rs.next()){
				;
				dto.setno(rs.getInt("no"));
				dto.setTourno(rs.getInt("tourno"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPic1(rs.getString("pic1"));
				dto.setPic2(rs.getString("pic2"));
				TourList.add(dto);
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
		return TourList;
	}

}
