package kr.go.incheon.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.incheon.dto.QnaDTO;
import kr.go.incheon.model.QnaDAO;

@WebServlet("/GetQnaListCtrl.do")
public class GetQnaListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//UTF-8 초기화
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		//dao에서 목록 불러오기 호출하여 반환받음
		QnaDAO dao = new QnaDAO();
		ArrayList<QnaDTO> qnaList = dao.getQnaList();
		
		//dao로 부터 받은 데이터를 view에 디스패치함
		request.setAttribute("list", qnaList);
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/qna/qnaList.jsp"); 
		view.forward(request, response);
	}

}
