package kr.go.incheon.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import kr.go.incheon.model.TourDAO;

@WebServlet("/ImgUploadCtrl.do")
public class ImgUploadCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uploadPath = request.getRealPath("upload");
		   
		   System.out.println(uploadPath);
		   
		   int size = 10*1024*1024;
		   int no;
		   int tourNo;
		   String title;
		   String content;
		   String Pic;
		   String Pic2;
		   
		   try{
		      MultipartRequest multi=new MultipartRequest(request,
		                     uploadPath,
		                     size, 
		                     "UTF-8",
		            new DefaultFileRenamePolicy());

		      no=Integer.parseInt(multi.getParameter("No"));
		      tourNo=Integer.parseInt(multi.getParameter("tourNo"));
		      title=multi.getParameter("title");
		      content=multi.getParameter("content");
		      
		      Enumeration files=multi.getFileNames();

		      String file1 =(String)files.nextElement();
		      Pic=multi.getFilesystemName(file1);

		      String file2 =(String)files.nextElement();
		      Pic2=multi.getFilesystemName(file2);
		      
		   } catch(Exception e) {
		      e.printStackTrace();
		   }
	}
}
