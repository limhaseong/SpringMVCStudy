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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/main.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$(function()
	{
		// 테스트
		//alert("확인~!!!");
		
		// 수정 버튼 클릭 시 액션 처리
		$(".updateBtn").click(function()
		{
			$(location).attr("href", "departmentupdateform.action?departmentId=" + $(this).val());
		});
		
		// 삭제 버튼 클릭 시 액션 처리
		$(".deleteBtn").click(function()
		{
			if (confirm("현재 선택한 데이터를 정말 삭제하시겠습니까?"))
			{
				$(location).attr("href", "departmentdelete.action?departmentId=" + $(this).val());
			}
		});
	});

</script>

</head>
<body>
<!---------------------------------------------------
#50. DepartmentList.jsp
     - 부서 리스트 출력 페이지
     - 관리자가 접근하는 지역 데이터 출력 페이지
       (일반 직원이 접근하는 직원 데이터 출력 페이지는
        DepList.jsp 로 구성)
--------------------------------------------------->

<div>
	<!-- 메뉴 영역 -->
	<div>
		<c:import url="EmployeeMenu.jsp"></c:import>
	</div>
	
	<!-- 콘텐츠 영역 -->
	<div id="content">
		<h1>[ 부서 관리 (관리자 전용) ]</h1>
		<hr>
		
		<div>
			<form>
				<input type="button" value="부서 추가" class="btn" onclick="location.href='departmentinsertform.action'">
			</form>
		</div>
		<br><br>
		 
		<table id="customers" class="table">
			<tr>
				<!-- 항목 6 EA -->
				<th>부서 아이디</th>
				<th>부서 이름</th>
				<th>소속 인원</th>
				<th>삭제 여부</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			 
			 <c:forEach var="department" items="${departmentList }">
			 	<tr>
			 		<td>${department.departmentId }</td>
			 		<td>${department.departmentName }</td>
			 		<td>${department.delCheck }</td>
			 		<td>${department.delCheck==0 ? "삭제 가능" : "삭제 불가"}</td>
			 		<td>
			 			<button type="button" class="btn updateBtn" value="${department.departmentId }">수정</button>
			 		</td>
					<%-- <td>
						<button type="button" class="btn deleteBtn" value="${department.departmentId }"
						${department.delCheck==0 ? "" : "disabled=\"disabled\""}
						>삭제</button>
					</td> --%>
					<td>
						<button type="button" class="btn deleteBtn" value="${department.departmentId }"
						${department.delCheck==0 ? "style='display: inline'" : "style='display: none'"}
						>삭제</button>
					</td>
			 	</tr>
			 </c:forEach>
			 
		</table>  
	</div>
	
	<!-- 회사 소개 및 어플리케이션 소개 영역 -->
	<div id="footer">
		
	</div>
</div>


</body>
</html>