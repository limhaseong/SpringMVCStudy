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
<title>GradeUpdateForm.jsp</title>

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
			if ($("#sub1").val()=="")
			{
				$("#err").html("과목1 항목이 누락되었습니다.");
				$("#err").css("display", "inline");
				$("#sub1").focus();
				return;								//-- submit 액션 처리 중단
			}
			else if ($("#sub2").val()=="")
			{
				$("#err").html("과목2 항목이 누락되었습니다.");
				$("#err").css("display", "inline");
				$("#sub2").focus();
				return;								//-- submit 액션 처리 중단
			}
			else if ($("#sub3").val()=="")
			{
				$("#err").html("과목3 항목이 누락되었습니다.");
				$("#err").css("display", "inline");
				$("#sub3").focus();
				return;								//-- submit 액션 처리 중단
			}
			
			// 0~100 데이터 검사
			if ($("#sub1").val() < 0 || $("#sub1").val() > 100)
			{
				alert("0~100 사이의 값을 넣어주세요.");
				$("#sub1").focus();
				return;	
			}
			else if ($("#sub2").val() < 0 || $("#sub2").val() > 100)
			{
				alert("0~100 사이의 값을 넣어주세요.");
				$("#sub2").focus();
				return;	
			}
			else if ($("#sub3").val() < 0 || $("#sub3").val() > 100)
			{
				alert("0~100 사이의 값을 넣어주세요.");
				$("#sub3").focus();
				return;	
			}
			
			// 폼 submit 액션 처리 수행
			$("#updateForm").submit();
			
		});
	});
</script>

</head>
<body>

<div>
	<h1>성적 수정</h1>
	<hr />
</div>

<div class="panel panel-default">

	<div class="panel-heading" id="title">성적 정보 수정</div>

	<div class="panel-body">
		<form role="form" action="gradeupdate.action" method="post" id="updateForm">

			<div class="form-group">
				<label for="sid"> 번호 : </label> <input type="text"
					class="form-control" id="sid" name="sid" value="${gdto.sid}" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="sub1"> 과목1 : </label> <input type="text"
					class="form-control" id="sub1" name="sub1" value="${gdto.sub1}">
			</div>
			
			<div class="form-group">
				<label for="sub2"> 과목2 : </label> <input type="text"
					class="form-control" id="sub2" name="sub2" value="${gdto.sub2}">
			</div>
			
			<div class="form-group">
				<label for="sub3"> 과목3 : </label> <input type="text"
					class="form-control" id="sub3" name="sub3" value="${gdto.sub3}">
			</div>

			
			<button type="button" class="btn btn-default btn-sm" id="submitBtn">수정</button>
			<button type="button" class="btn btn-default btn-sm btnInsert" onclick="location.href='gradelist.action'">성적 리스트</button>
			<br><br>
			
			<span id="err" style="color: red; font-weight: bold; display: none;"></span>
		</form>
	</div>

</div>
</body>
</html>