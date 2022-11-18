package kr.go.incheon.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.incheon.dto.QnaDTO;
import kr.go.incheon.model.QnaDAO;

@WebServlet("/DelQnaCtrl.do")
public class DelQnaCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int parno = Integer.parseInt(request.getParameter("parno"));
		
		QnaDTO dto = new QnaDTO();
		dto.setParno(parno);
		
		QnaDAO dao = new QnaDAO();
		int cnt = dao.DelQna(dto);
		
		if(cnt>=1){
			response.sendRedirect("GetQnaListCtrl.do");
		} else {
			response.sendRedirect("GetQnaDetail.do");
		}
	}
}