<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<section class="content">
<div class="row">
	<form role="form" method="post">
		<input type="hidden" name="bno" value="${boardVO.bno}">
	</form>
	
		<div class="box-body">
			<div class="form-group">
				<label for="exampleInputEmail1">제목</label>
				<input type="text" name="title" class="form-control" value="${boardVO.title}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">내용</label>
				<textarea class="form-control" name="content" rows="3" readonly="readonly">${boardVO.title}</textarea>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">작성자</label>
				<input type="text" name="writer" class="form-control" value="${boardVO.writer}" readonly="readonly">
			</div>
		</div>
		
		<div class="box-footer">
			<button type="submit" class="btn btn-warning">수정</button>
			<button type="submit" class="btn btn-danger">삭제</button>
			<button type="submit" class="btn btn-primary">목록</button>
		</div>
	
</div>
</section>

<script type="text/javascript">
var formObj = $("form[role='form']");
	
console.log(formObj);
	
$(".btn-warning").on("click", function(){
	formObj.attr("action", "/board/modify");
	formObj.attr("method", "get");
	formObj.submit();
});
	
$(".btn-danger").on("click", function(){
	formObj.attr("action", "/board/remove");
	formObj.submit();
});
	
$(".btn-primary").on("click", function(){
	self.location = "/board/listAll";
});
</script>
<%@ include file="../include/footer.jsp" %>