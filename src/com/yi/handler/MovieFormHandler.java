package com.yi.handler;

import java.io.File;
import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.yi.dao.MovieDAO;
import com.yi.jdbc.JDBCUtil;
import com.yi.model.Movie;
import com.yi.mvc.CommandHandler;

public class MovieFormHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			return "/WEB-INF/view/movie/movieForm.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")) {
			String uploadPath = req.getRealPath("upload"); //폴더명이 정해짐
			File dir = new File(uploadPath);
			if(dir.exists() == false) {	//폴더 만듦
				dir.mkdir();
			}
			
			System.out.println(uploadPath);
			
			
			int size = 1024*1021*10; //10M
			MultipartRequest multi = new MultipartRequest(req,
														uploadPath,
														size,
														"UTF-8",
														new DefaultFileRenamePolicy());
			
			//DB에 상품 등록
			Connection conn = null;
			
			try {
				conn = JDBCUtil.getConnection();
				// ProductDAO 만들어서 add함.
				MovieDAO dao = MovieDAO.getInstance();
				Movie product = new Movie(
						multi.getParameter("title"),
						multi.getParameter("content"),
						multi.getFilesystemName("file"),
						multi.getParameter("time"));
				
				dao.insertMovie(conn, product);
				
				res.sendRedirect(req.getContextPath()+"/movie/list.do");
				
				
				return null;
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				JDBCUtil.close(conn);
			}
		}
		return null;
	}

}
