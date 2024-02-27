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
<title>StudentInsertForm.jsp</title>

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
	$(document).ready(function()
	{
		// 직원 추가 버튼이 클릭되었을 때 수행되어야 할 코드 처리
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
			$("#insertForm").submit();
		});
	});
</script>

</head>
<body>

<div>
	<h1>학생 입력</h1>
	<hr />
</div>

<div class="panel panel-default">

	<div class="panel-heading" id="title">학생 정보 입력</div>

	<div class="panel-body">
		<form role="form" action="studentinsert.action" method="post" id="insertForm">

			<div class="form-group">
				<label for="sid"> 번호 : </label> <input type="text"
					class="form-control" id="sid" name="sid">
			</div>

			<div class="form-group">
				<label for="name"> 이름 : </label> <input type="text"
					class="form-control" id="name" name="name">
			</div>

			<div class="form-group">
				<label for="tel"> 전화번호 : </label> <input type="tel"
					class="form-control" id="tel" name="tel">
			</div>

			<button type="button" class="btn btn-default btn-sm" id="submitBtn">추가</button>
			<button type="reset" class="btn btn-default btn-sm btnCancel">취소</button>
			<button type="button" class="btn btn-default btn-sm btnInsert" onclick="location.href='studentlist.action'">학생 리스트</button>
			
			<span id="err" style="color: red; font-weight: bold; display: none;"></span>
		</form>
	</div>

</div>

</body>
</html>