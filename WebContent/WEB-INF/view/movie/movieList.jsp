<%@page import="com.yi.model.MovieInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="movieMgr" class="com.yi.model.MovieManager" scope="application"></jsp:useBean>

<%@ include file="../include/header.jsp" %>
<style>
	section{
		width:1200px;
		text-align: center;
	}
	section a{
		float: right;
		margin:15px 40px;
		color: black;
	}
	section div{
		float: left;
	}
	section #movies{
		width:1000px;
		margin-left:100px;
	}
	section #movies div{
		width:220px;
		border: 1px solid gray;
		margin:10px;
	}
	section #movies a{
		width:180px;
	}
	section #movies img{
		width:200px;
		margin:10px;
	}
</style>

<section>
	<a href="form.do">상영영화 추가하기</a>
	
	<div id="movies">
	<c:forEach var="m" items="${movieMgr.list }">
		<div>
			<a href="detail.do"><img src="images/${m.file }"></a>
			<p>${m.title}</p>
		</div>
	</c:forEach>
		
	</div> 	
	
</section>

<%@ include file="../include/footer.jsp"%>

