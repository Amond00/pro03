package kr.go.incheon.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.incheon.dto.UserDTO;
import kr.go.incheon.model.UserDAO;


@WebServlet("/AddUserCtrl.do")
public class AddUserCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String usId = request.getParameter("usid");
		String usPw = request.getParameter("uspw");
		String usName = request.getParameter("usname");
		String address = request.getParameter("address");
		String tel= request.getParameter("tel");
		String email = request.getParameter("email");
		String birth = request.getParameter("birth");
		
		UserDTO dto = new UserDTO();
		dto.setUsid(usId);
		dto.setUspw(usPw);
		dto.setUsname(usName);
		dto.setAddress(address);
		dto.setTel(tel);
		dto.setEmail(email);
		dto.setBirth(birth);
		
		UserDAO dao = new UserDAO();
		int cnt = dao.addUser(dto);
		
		if(cnt>=1){
			response.sendRedirect("Main");
		} else {
			response.sendRedirect("");
		}
	}
}
