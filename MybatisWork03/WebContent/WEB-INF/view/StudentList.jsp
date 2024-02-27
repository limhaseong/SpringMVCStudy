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
<title>StudentList.jsp</title>

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
		// 수정 버튼 클릭 시 액션 처리
		$(".btnUpdate").click(function()
		{
			$(location).attr("href", "studentupdateform.action?sid=" + $(this).val());
		});
		
		// 삭제 버튼 클릭 시 액션 처리
		$(".btnDelete").click(function()
		{
			if (confirm("현재 선택한 데이터를 정말 삭제하시겠습니까?"))
			{
				$(location).attr("href", "studentdelete.action?sid=" + $(this).val());
			}
		});
	});
</script>

</head>
<body>

<div>
	<h1>학생 정보</h1>
	<hr>
</div>

<div class="container">
	<div class="panel-group">
		<div class="panel panel-default">
			<div class="panel-heading">학생 정보 출력</div>
			<div class="panel-body">
				<table class="table">
					<thead>
						<tr>
							<th>번호</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>성적유무</th>
							<th>수정 / 삭제</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="sdto" items="${list }">
							<tr>
								<td>${sdto.sid }</td>
								<td>${sdto.name }</td>
								<td>${sdto.tel }</td>
								<td>${sdto.sub==0  ? "성적없음" : "성적있음"}</td>
								<td>
									<button type="button" class="btn btn-default btn-xs btnUpdate" value="${sdto.sid }">수정</button>
									<button type="button" class="btn btn-default btn-xs btnDelete" value="${sdto.sid }" 
									${sdto.sub==0 ? "style='display: inline'" : "style='display: none'"}>삭제</button>
								</td>
	
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<button type="button" class="btn btn-default btn-sm" role="badgeFrame">
					학생 수  <span class="badge" role="badge">${count }</span>
				</button>
				
			</div>
			
			<button type="button" class="btn btnInsert" onclick="location.href='gradelist.action'">학생 성적 리스트</button>
			<button type="button" class="btn btnInsert" onclick="location.href='studentinsertform.action'">학생 추가</button>
			
		</div>
	</div>
</div>

</body>
</html>