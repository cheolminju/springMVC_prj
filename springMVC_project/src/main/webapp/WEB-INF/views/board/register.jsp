<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<section class="content">
<div class="row">
	<form role="form" method="post">
		<div class="box-body">
			<div class="form-group">
				<label for="exampleInputEmail1">제목</label>
				<input type="text" name="title" class="form-control" placeholder="제목">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">내용</label>
				<textarea class="form-control" name="content" rows="3" placeholder="내용을 입력하세요."></textarea>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">작성자</label>
				<input type="text" name="writer" class="form-control" placeholder="이름">
			</div>
		</div>
		
		<div class="box-footer">
			<button type="submit" class="btn btn-primary">등록</button>
		</div>
	</form>
</div>
</section>

<%@ include file="../include/footer.jsp" %>