package kr.go.incheon.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.go.incheon.dto.UserDTO;
import kr.go.incheon.model.UserDAO;

@WebServlet("/UserLoginCtrl.do")
public class UserLoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				//UTF-8 초기화
				request.setCharacterEncoding("UTF-8");
				response.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");
				
				PrintWriter out = response.getWriter();
						
				String usid = request.getParameter("usid");
				String uspw = request.getParameter("uspw");
				
				
				UserDTO dto = new UserDTO();
				dto.setUsid(usid);
				dto.setUspw(uspw);
				
				
				UserDAO dao = new UserDAO();
				int cnt = dao.Login(dto);

				String usname = dto.getUsname();
				HttpSession session = request.getSession();
				
				
				if(cnt>=1){
					session.setAttribute("usId", usid);
					session.setAttribute("usName", usname);
					response.sendRedirect("Main");
				} else {
					
					out.println("<script>");

					out.println("alert('아이디 혹은 비밀번호가 일치하지 않습니다.');");

					out.println("history.back();");

					out.println("</script>");
						
				}
	}
}