<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>GradeList.jsp</title>

<!-- 기본 CSS -->
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/main.css">

<!-- 부트스트랩 적용 CSS -->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부트스트랩 부가 테마 CSS -->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 제이쿼리 적용 JS -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>

<!-- 부트스트랩 관련 스크립트 적용 JS -->
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
<script type="text/javascript">
	$(function()
	{
		// 입력 버튼 클릭 시 액션 처리
		$(".btnInsert").click(function()
		{
			$(location).attr("href", "gradeinsertform.action?sid=" + $(this).val());
		});
		
		// 수정 버튼 클릭 시 액션 처리
		$(".btnUpdate").click(function()
		{
			$(location).attr("href", "gradeupdateform.action?sid=" + $(this).val());
		});
		
		// 삭제 버튼 클릭 시 액션 처리
		$(".btnDelete").click(function()
		{
			if (confirm("현재 선택한 데이터를 정말 삭제하시겠습니까?"))
			{
				$(location).attr("href", "gradedelete.action?sid=" + $(this).val());
			}
		});
	});
</script>

</head>
<body>

<div>
	<h1>성적 정보</h1>
	<hr>
</div>

<div class="container">
	<div class="panel-group">
		<div class="panel panel-default">
			<div class="panel-heading">성적 정보 출력</div>
			<div class="panel-body">
				<table class="table">
					<thead>
						<tr>
							<th>번호</th>
							<th>이름</th>
							<th>과목1</th>
							<th>과목2</th>
							<th>과목3</th>
							<th>총합</th>
							<th>평균</th>
							<th>등급</th>
							<th>추가 / 수정 / 삭제</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="gdto" items="${list }">
							<tr>
								<td>${gdto.sid }</td>
								<td>${gdto.name }</td>
								<td>${gdto.sub1 }</td>
								<td>${gdto.sub2 }</td>
								<td>${gdto.sub3 }</td>
								<td>${gdto.tot }</td>
								<td>${gdto.avg }</td>
								<td>${gdto.ch }</td>
								
								<td>
								<c:choose>
									<c:when test="${gdto.tot==-1}">
										<button type="button" class="btn btn-default btn-xs btnInsert" value="${gdto.sid }">성적 추가</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="btn btn-default btn-xs btnUpdate" value="${gdto.sid }">성적 수정</button>
									</c:otherwise>
								</c:choose>
									<button type="button" class="btn btn-default btn-xs btnDelete" value="${gdto.sid }" ${gdto.sub1 != -1 ? "style='display: inline'" : "style='display: none'"}>삭제</button>
								</td>
								
								
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			
			
			<button type="button" class="btn btnstu" onclick="location.href='studentlist.action'">학생 리스트</button>
			
		</div>
	</div>
</div>
</body>
</html>