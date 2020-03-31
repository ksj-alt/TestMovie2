<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="movie" class="com.yi.model.MovieInfo"></jsp:useBean>
<jsp:setProperty name="movie" property="*"/>
<jsp:useBean id="movieMgr" class="com.yi.model.MovieManager" scope="application"></jsp:useBean>
<% movieMgr.addMovie(movie); %>
   
<%@ include file="../include/header.jsp" %>

<style>
	section{
		margin:30px 0;
	}
</style>
	
<section>
	<h3>'<%=movie.getTitle() %>' 영화가 등록되었습니다.</h3>
	<br>
	<a href="movieList.jsp">상영영화 보기</a>
</section>

<%@ include file="../include/footer.jsp"%>