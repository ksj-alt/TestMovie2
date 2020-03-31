<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="movieMgr" class="com.yi.model.MovieManager" scope="application"></jsp:useBean>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../include/header.jsp" %>

<style>
	section{
		width:500px;
		margin:0 auto;
		padding:35px;
	}
	section #image{
		float: left;
		margin:0 10px;
	}
	section #text{
		text-align: left;
		margin:10px;
	}
	section #text h3{
		margin:10px 0;
	}
</style>

<section>
	<div id="image">
		<img src="${pageContext.request.contextPath}/upload/${movie.file }">
	</div>
	<div id="text">
		<h3>${movie.title }</h3>
		<h4>< 줄거리 ></h4>
		<p>
			${movie.content }
		</p>
	</div>
</section>

<%@ include file="../include/footer.jsp"%>