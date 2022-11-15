package kr.go.incheon.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Maria {
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
	final static String TOUR_SELECT_ALL = "select * from tour order by regdate desc";
	final static String TOUR_SELECT_ONE = "select * from tour where tourno=?";
	final static String TOUR_INSERT = "insert into tour (title, content, pic, pic2) values(?,?,?,?)";
	final static String TOUR_UPDATE = "update tour SET title=?, content=?, pic=?, pic2=? where no=?";
	final static String TOUR_DELETE = "delete from tour where no=?";
	final static String TOUR_VISITED_UPDATE = "update tour set visited = visited+1 where no=?";
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName(DRIVER);
		Connection con = DriverManager.getConnection(URL, USER, PW);
		return con;
	}
	
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
