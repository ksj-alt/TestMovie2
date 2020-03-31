<%@page import="java.util.ArrayList"%>
<%@page import="com.yi.model.MovieInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="movieMgr" class="com.yi.model.MovieManager" scope="application"></jsp:useBean>

<%@ include file="../include/header.jsp" %>

<style>
	section{
		width:1000px;
		margin:0 auto;
	}
	section h2{
		margin:10px;
	}
	table{
		width:1000px;
		border:1px solid black;
		border-collapse: collapse;
		margin-bottom:30px;
	}
	th{
		width:300px;
		height:30px;
		border:1px solid black;
		font-size: 18px;
	}
	td{
		border:1px solid black;
		text-align: left;
		padding-left:20px;
	}
</style>

<section>
	
	<h2><상영 시간표></h2>
	<table>
		<c:forEach var="m" items="${list }">
			<tr>
				<th>${m.title }</th>
				<td>${m.time }</td>
			</tr>
		</c:forEach>
	
	</table>
</section>


<%@ include file="../include/footer.jsp"%>