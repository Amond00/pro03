package kr.go.incheon.controller;

import java.io.IOException;

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
				
				String usId = request.getParameter("usId");
				String usPw = request.getParameter("usPw");
				
				
				UserDTO dto = new UserDTO();
				dto.setUsId(usId);
				dto.setUsPw(usPw);
				
				
				UserDAO dao = new UserDAO();
				
				int cnt = dao.Login(dto);

				String usName = dto.getUsName();
				HttpSession session = request.getSession();
				
				System.out.println("로그인 정보");
				System.out.println("아이디"+usId);
				System.out.println("이름"+usName);
					
				
				if(cnt>=1){
					response.sendRedirect("Main");
				} else {
					response.sendRedirect("Main");
					session.setAttribute("usId", usId);
					session.setAttribute("usName", usName);
				}
	}
}