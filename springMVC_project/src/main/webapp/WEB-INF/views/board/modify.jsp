<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<section class="content">
<div class="row">
	<form role="form" method="post">	
		<div class="box-body">
		<div class="form-group">
				<label for="exampleInputEmail1">No</label>
				<input type="text" name="bno" class="form-control" value="${boardVO.bno}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">제목</label>
				<input type="text" name="title" class="form-control" value="${boardVO.title}">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">내용</label>
				<textarea class="form-control" name="content" rows="3">${boardVO.title}</textarea>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">작성자</label>
				<input type="text" name="writer" class="form-control" value="${boardVO.writer}">
			</div>
		</div>
	</form>
		
		<div class="box-footer">
			<button type="submit" class="btn btn-primary">저장</button>
			<button type="submit" class="btn btn-warning">취소</button>
		</div>
</div>
</section>

<script type="text/javascript">
var formObj = $("form[role='form']");
	
console.log(formObj);
	
$(".btn-warning").on("click", function(){
	self.location = "/board/listAll";
});
	
$(".btn-primary").on("click", function(){
	formObj.submit();
});
</script>
<%@ include file="../include/footer.jsp" %>