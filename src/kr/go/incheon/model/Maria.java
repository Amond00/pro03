package kr.go.incheon.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Maria {
	//MariaDB 연결정보
    static final String DRIVER = "org.mariadb.jdbc.Driver";
    static final String URL = "jdbc:mariadb://127.0.0.1:3308/goverment?serverTimezone=Asia/Seoul";
    static final String USER = "root";
    static final String PW = "1234";
    //공지사항 게시판
	final static String NOTICE_SELECT_ALL = "select * from notice order by regdate desc";
	final static String NOTICE_SELECT_ONE = "select * from notice where no=?";
	final static String NOTICE_INSERT = "insert into notice(title, content) values (?, ?)";
	final static String NOTICE_DELETE = "delete from notice where no=?";
	final static String NOTICE_UPDATE = "update notice set title=?, content=? where no=?";
	final static String NOTICE_VISITED_UPDATE = "update notice set visited = visited + 1 where no=?";
	//유저
	final static String USER_JOIN = "insert into user(usid, uspw, usname, birth, email, tel, address) values (?,?,?,?,?,?,?)";
	final static String USER_LOGIN = "SELECT * FROM USER WHERE usid=? and uspw=?";
	final static String USER_ID_CHECK = "select * form user where usid=?";
	final static String USER_ALL = "select * from user";
	final static String USER_UPDATE = "update user set uspw=?, name=?, birth=?, email=?, tel=?, address=? where usid=?";
	final static String VISIT_UPDATE = "update user set visited=visited+1 where usid=?";
	//여행지 게시판 
	final static String LOAD_LAST_NO = "select no from tour order by no desc limit 1";
	final static String FILE_UPLOAD = "insert into pic(tourno, picname, pos) values (?,?,?)";
	final static String JSON_PICLIST = "select * from pic where tourno=?";
	final static String ADD_TOUR = "insert into tour(tourno, cate, place, comment1, comment2) values (?,?,?,?,?)";
	final static String TOUR_LIST_ALL = "select * from tour";
	final static String TOUR_CATE_LIST = "select a.no, a.tourno, a.cate, a.place, a.comment1, a.comment2, b.picname, b.pos from tour a inner join pic b on a.tourno=b.tourno where a.cate=? and b.pos=1";
	final static String TOUR_LIST_DETAIL = "select * from tour where no=?";
	final static String TOUR_DEL = "delete from tour where no=?";
	final static String MODIFY_TOUR = "update tour set tourno=?, cate=?, place=?, comment1=?, comment2=?, addr=? where no=?";
	
	//질문 및 답변 게시판 lev0은 질문 1은 답변
	final static String QNA_SELECT_ALL = "select * from qna order by parno asc, lev asc,no asc";
	final static String QNA_SELECT_ALL_Q = "select * from qna where lev=0 order by parno asc, lev asc,no asc";
	final static String QNA_SELECT_ALL_A = "select * from qna where lev=1 order by parno asc, lev asc,no asc";
	final static String QNA_SELECT_ONE = "select * from qna where no=?";
	
	final static String QNA_SELECT_Q_ONE = "select * from qna where no=? and lev=0";
	final static String QNA_SELECT_A_ONE = "select * from qna where parno=? and lev=1";
	
	final static String QNA_INSERT_Q = "insert into qna (title, content, author, lev) values(?, ?, ?, 0)";
	final static String QNA_SELECT_Q_P = "select no from qna order by resdate desc limit 1";
	final static String QNA_INSERT_Q_P = "update qna set parno=? where no=?";
	
	final static String QNA_INSERT_A = "insert into qna(title, content, author, lev, parno) values(?, ?, 'admin', 1, ?)";
	
	final static String QNA_UPDATE_A = "update qna set title=?, content=?, author=? lev=? where no=?";
	final static String QNA_UPDATE_Q = "update qna set title=?, content=?, author=? lev=? where no=?";
	
	final static String QNA_DELETE = "delete from qna where parno=?";
	
	final static String QNA_VISITED_UPDATE = "update qna set visited=visited+1 where no=?";
	
	//test
	public final static String TEST_SELECT_ONE = "select * from test where name=?";
	public static final String TEST_SELECT_ALL ="select * from test";
	//연결
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName(DRIVER);
		Connection con = DriverManager.getConnection(URL, USER, PW);
		return con;
	}
	//닫기1
	public static void close(PreparedStatement pstmt, Connection con) {
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
		if(con!=null){
			try {
				con.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
	//닫기 2
	public static void close(ResultSet rs, PreparedStatement pstmt, Connection con) {
		if(rs!=null){
			try {
				rs.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
		if(con!=null){
			try {
				con.close();
			} catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
}
