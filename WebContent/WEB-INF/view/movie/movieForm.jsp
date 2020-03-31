<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jsp"%>

<style>
	section{
		width:570px;
		margin:0 auto;
	}
	fieldset{
		width:500px;
		height:400px;
		text-align: left;
		padding:20px;
		margin:20px;
	}
</style>

<section>
	<form action="form.do" method="post" enctype="multipart/form-data">
		<fieldset>
			<legend>영화 정보</legend>
			<p>
				<label>제목 : </label>
				<input type="text" name="title" placeholder="영화 이름">
			</p><br>
			<p>
				<label>상세설명 : </label><br>
				<textarea rows="10" cols="50" name="content" placeholder="영화 상세 이름"></textarea>
			</p><br>
			<p>
				<label>파일 : </label>
				<input type="file" name="file">
			</p><br>
			<p>
				<label>상영 시간 : </label>
				<input type="text" name="time" placeholder="경로">
			</p><br>
			<p>
				<input type="submit" value="전송">
			</p>
		</fieldset>
	</form>
</section>

<%@ include file="../include/footer.jsp"%>