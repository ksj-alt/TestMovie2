package com.yi.handler;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yi.dao.MovieDAO;
import com.yi.jdbc.JDBCUtil;
import com.yi.model.Movie;
import com.yi.mvc.CommandHandler;

public class MovieDetailHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Connection conn = null;
		
		try {
			String title = req.getParameter("title");
			conn = JDBCUtil.getConnection();
			MovieDAO dao = MovieDAO.getInstance();
			Movie movie = dao.selectByTitle(conn, title);
			System.out.println(movie);
			req.setAttribute("movie", movie);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}
		return "/WEB-INF/view/movie/movieDetail.jsp";
	}

}
