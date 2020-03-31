<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
		padding:0;
		margin:0;
	}
	#container{
		width:1200px;
		margin:0 auto;
		text-align: center;
	}
	header div#title{
		font-size: 30px;
		margin:3px;
	}
	header a{
		text-align: right;
		color:black;
		text-decoration: none;
	}
	nav{
		width:1200px;
		height:30px;
		background-color: #FFE08C;
		position: relative;
	}
	nav ul{
		position:absolute;
		left:350px;
		top:100;
		list-style: none;
		line-height: 30px;
	}
	nav ul li{
		float: left;
	}
	nav ul li a{
		text-decoration: none;
		color:black;
		padding:0 30px;
	}
	footer{
		width:1200px;
		height:70px;
		background-color: #FFE08C;
		clear:both;
	}
	footer #p1{
		font-size: 14px;
		padding-top:12px;
	}
	footer #p2{
		font-size: 12px;
		padding-top:10px;
	}
</style>
</head>
<body>
		<div id="container">
		<header>
			<div id="title">대구 CGV</div>
			<a href="loginForm.jsp">로그인</a>
		</header>
		<nav>
			<ul>
				<li><a href="templateMain.jsp">HOME</a> | </li>
				<li><a href="list.do">상영영화</a> | </li>
				<li><a href="schedule.do">상영시간표</a> | </li>
				<li><a href="movieBoardList.jsp">게시판</a></li>
			</ul>
		</nav>
