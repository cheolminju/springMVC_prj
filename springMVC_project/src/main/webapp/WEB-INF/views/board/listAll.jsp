<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>   
<%@ include file="../include/header.jsp" %>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<section class="content">
<div class="row">
	<table class="table table-bordered">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일시</th>
			<th>조회수</th>
		</tr>
		<c:forEach items="${list}" var="boardVO">
			<tr>
				<td>${boardVO.bno}</td>
				<td>
					<a href='/board/read?bno=${boardVO.bno}'>${boardVO.title}</a>
				</td>
				<td>${boardVO.writer}</td>
				<td>
					<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}" />
				</td>
				<td><span class="badge br-red">${boardVO.viewcnt}</span></td>
			</tr>
		</c:forEach>
	</table>
</div>
</section>

<script type="text/javascript">
var result = '${msg}';

if(result == 'success') {
	alert("처리가 완료되었습니다.");
}

</script>
<%@ include file="../include/footer.jsp" %>