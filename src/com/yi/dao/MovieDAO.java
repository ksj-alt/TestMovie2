package com.yi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yi.jdbc.JDBCUtil;
import com.yi.model.Movie;

public class MovieDAO {
	private static final MovieDAO dao = new MovieDAO();
	
	public static MovieDAO getInstance() {
		return dao;
	}
	
	private MovieDAO() {
		
	}
	
	public List<Movie> listMovie(Connection conn) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from movie";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			List<Movie> list = new ArrayList<Movie>();
			while(rs.next()) {
				Movie m = new Movie(rs.getString(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4));
				list.add(m);
			}
			return list;
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
		
	}


	public void insertMovie(Connection conn, Movie movie) throws SQLException {
		PreparedStatement pstmt = null;
		
		try {
			String sql = "insert into movie values (?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, movie.getTitle());
			pstmt.setString(2, movie.getContent());
			pstmt.setString(3, movie.getFile());
			pstmt.setString(4, movie.getTime());
			pstmt.executeUpdate();
		} finally {
			JDBCUtil.close(pstmt);
		}
		
	}

	
	public Movie selectByTitle(Connection conn, String title) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println("title=="+title);
		try {
			String sql = "select * from movie where m_title = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Movie movie = new Movie(rs.getString(1),
										rs.getString(2),
										rs.getString(3),
										rs.getString(4));
				return movie;
			}
			return null;
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
		
	}

}
