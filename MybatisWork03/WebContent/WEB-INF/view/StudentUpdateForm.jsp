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
<title>StudentUpdateForm.jsp</title>

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
		$("#submitBtn").click(function()
		{
			// 데이터 검사(누락된 입력값이 있는지 없는지에 대한 여부 확인)
			if ($("#sid").val()=="")
			{
				$("#err").html("번호 항목이 누락되었습니다.");
				$("#err").css("display", "inline");
				$("#sid").focus();
				return;								//-- submit 액션 처리 중단
			}
			else if ($("#name").val()=="")
			{
				$("#err").html("이름 항목이 누락되었습니다.");
				$("#err").css("display", "inline");
				$("#name").focus();
				return;								//-- submit 액션 처리 중단
			}
			else if ($("#tel").val()=="")
			{
				$("#err").html("전화 항목이 누락되었습니다.");
				$("#err").css("display", "inline");
				$("#tel").focus();
				return;								//-- submit 액션 처리 중단
			}
			
			// 폼 submit 액션 처리 수행
			$("#updateForm").submit();
		});
	});
</script>

</head>
<body>

<div>
	<h1>학생 수정</h1>
	<hr />
</div>

<div class="panel panel-default">

	<div class="panel-heading" id="title">학생 정보 수정</div>

	<div class="panel-body">
		<form role="form" action="studentupdate.action" method="post" id="updateForm">

			<div class="form-group">
				<label for="sid"> 번호 : </label> 
				<input type="text" class="form-control" id="sid" name="sid" value="${sdto.sid}" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="name"> 이름 : </label> 
				<input type="text" class="form-control" id="name" name="name" value="${sdto.name}">
			</div>

			<div class="form-group">
				<label for="tel"> 전화번호 : </label>
				<input type="tel" class="form-control" id="tel" name="tel" value="${sdto.tel}">
			</div>
			
			<button type="button" class="btn btn-default btn-sm" id="submitBtn">학생 수정</button>
			<button type="button" class="btn btn-default btn-sm btnInsert" onclick="location.href='studentlist.action'">학생 리스트</button>
			<br><br>
			
			<span id="err" style="color: red; font-weight: bold; display: none;"></span>
		</form>
	</div>

</div>
</body>
</html>