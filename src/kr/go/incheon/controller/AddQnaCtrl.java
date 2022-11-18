package kr.go.incheon.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.incheon.dto.QnaDTO;
import kr.go.incheon.model.QnaDAO;

@WebServlet("/AddQnaCtrl.do")
public class AddQnaCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String content = request.getParameter("content");
		
		QnaDTO dto = new QnaDTO();
		dto.setTitle(title);
		dto.setAuthor(author);
		dto.setContent(content);
		
		QnaDAO dao = new QnaDAO();
		int cnt = dao.addQna(dto);
		
		if(cnt>=1){
			response.sendRedirect("GetQnaListCtrl.do");
		} else {
			response.sendRedirect("./qna/addQna.jsp");
		}
	}
}