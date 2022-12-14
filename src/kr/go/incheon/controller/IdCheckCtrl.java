package kr.go.incheon.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import kr.go.incheon.model.UserDAO;

@WebServlet("/IdCheckCtrl.do")
public class IdCheckCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String usid = request.getParameter("usid");
		boolean result = false;
		int cnt = 0;
		UserDAO dao = new UserDAO();
		cnt = dao.idCheckPro(usid);
		if(cnt>=1){
			result = false;
		} else {
			result = true;
		}
		JSONObject json = new JSONObject();
		json.put("result", result);
		PrintWriter out = response.getWriter();
		out.println(json.toString());
		
	}
}