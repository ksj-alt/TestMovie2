package com.yi.dao.test;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.yi.dao.MovieDAO;
import com.yi.jdbc.DBCPInit;
import com.yi.jdbc.JDBCUtil;
import com.yi.model.Movie;

public class MovieDAOTest {
	Connection conn = null;
	MovieDAO dao = null;
	
	@Before
	public void before() {
		try {
			DBCPInit dbcpInit = new DBCPInit();
			dbcpInit.init(); //junit 테스트는 서버가 돌지 않으므로, 우리가 connection pool을 만들어줌
			conn = JDBCUtil.getConnection();
			dao = MovieDAO.getInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@After
	public void after() {
		JDBCUtil.close(conn);
	}
	
	@Test
	public void testInsert() throws SQLException {
		Movie movie = new Movie("굿바이 싱글", "설명", null, "09:15, 14:00, 16:30, 18:55, 21:30, 24:00");
		dao.insertMovie(conn, movie);
	}
	
	@Test
	public void testList() throws SQLException {
		List<Movie> list = dao.listMovie(conn);
		for(Movie movie : list) {
			System.out.println(movie);
		}
	}
}
