package com.yi.handler;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yi.dao.MovieDAO;
import com.yi.jdbc.JDBCUtil;
import com.yi.mvc.CommandHandler;

public class MovieScheduleHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Connection conn = null;
		try {
			conn = JDBCUtil.getConnection();
			MovieDAO dao = MovieDAO.getInstance();
			
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			
		}
		return null;
	}

}
