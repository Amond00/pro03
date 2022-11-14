package kr.go.incheon.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.incheon.dto.NoticeDTO;
import kr.go.incheon.model.NoticeDAO;

@WebServlet("/UpdateNoticeCtrl.do")
public class UpdateNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		NoticeDTO dto = new NoticeDTO();
		dto.setNo(no);
		dto.setTitle(title);
		dto.setContent(content);
		
		NoticeDAO dao = new NoticeDAO();
		int cnt = dao.updateNotice(dto);
		
		if(cnt>=1){
			response.sendRedirect("GetNoticeListCtrl.do");
		} else {
			response.sendRedirect("UpdateNoticeCtrl?no="+no);
		}
	}
}