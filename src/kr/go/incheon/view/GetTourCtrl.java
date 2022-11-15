package kr.go.incheon.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.incheon.dto.TourDTO;
import kr.go.incheon.model.TourDAO;

@WebServlet("/GetTourCtrl.do")
public class GetTourCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TourDTO dto = new TourDTO();
		int tourno = Integer.parseInt(request.getParameter("tourno"));
		dto.setTourno(tourno);
		
		TourDAO dao = new TourDAO();
		ArrayList<TourDTO> dtols = dao.getTourList();
		
		//dao로 부터 받은 데이터를 view에 디스패치함
		request.setAttribute("dto", dtols);
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/notice/tourList.jsp");
		view.forward(request, response);
	}
}