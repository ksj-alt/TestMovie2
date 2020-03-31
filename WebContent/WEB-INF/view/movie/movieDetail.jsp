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
		<img src="images/we.jpg">
	</div>
	<div id="text">
		<h3>우리들</h3>
		<h4>< 줄거리 ></h4>
		<p>
			그 여름, 나에게도 친구가 생겼다…
			 “내 마음이 들리니”
			 
			 언제나 혼자인 외톨이 선은 모두가 떠나고 홀로 교실에 남아있던 방학식 날, 전학생 지아를 만난다.
			 서로의 비밀을 나누며 순식간에 세상 누구보다 친한 사이가 된 선과 지아는 생애 가장 반짝이는 여름을 보내는데,
			 개학 후 학교에서 만난 지아는 어쩐 일인지 선에게 차가운 얼굴을 하고 있다.
			 
			 선을 따돌리는 보라의 편에 서서 선을 외면하는 지아와 다시 혼자가 되고 싶지 않은 선.
			 어떻게든 관계를 회복해보려 노력하던 선은 결국 지아의 비밀을 폭로해버리고 마는데...
			 
			 선과 지아. 
			 우리는 다시 '우리'가 될 수 있을까?
		</p>
	</div>
</section>

<%@ include file="../include/footer.jsp"%>