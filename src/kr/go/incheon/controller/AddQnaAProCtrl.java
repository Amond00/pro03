package kr.go.incheon.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.incheon.dto.QnaDTO;
import kr.go.incheon.model.QnaDAO;

@WebServlet("/AddQnaAProCtrl.do")
public class AddQnaAProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		int parno = Integer.parseInt(request.getParameter("parno"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		
		QnaDTO dto = new QnaDTO();
		dto.setTitle(title);
		dto.setContent(content);
		dto.setParno(parno);
		
		QnaDAO dao = new QnaDAO();
		int cnt = dao.addQnaA(dto);
		
		if(cnt>=1){
			response.sendRedirect("GetQnACtrl.do?no="+no);
		} else {
			response.sendRedirect("AddQnaACtrl.do?no="+no);
		}
	}

}


