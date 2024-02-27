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
</head>
<body>
<!---------------------------------------------------
#59. DepList.jsp
     - 부서 리스트 출력 페이지
     - 일반 직원이 접근하는 직원 데이터 출력 페이지
       (관리자가 접근하는 직원 데이터 출력 페이지는
        DepartmentList.jsp 로 구성)
     - 제한된 항목
     - 입력 / 수정 / 삭제 기능 없음
--------------------------------------------------->

<div>
	<!-- 메뉴 영역 -->
	<div>
		<c:import url="EmployeeMenu.jsp"></c:import>
	</div>
	
	<!-- 콘텐츠 영역 -->
	<div id="content">
		<h1>[ 부서 관리 (일반사원 전용) ]</h1>
		<hr>

		<br><br>
		 
		<table id="customers" class="table">
			<tr>
				<!-- 항목 3 EA -->
				<th>부서 아이디</th>
				<th>부서 이름</th>
				<th>소속 인원</th>
			</tr>
			 
			 <c:forEach var="department" items="${departmentList }">
			 	<tr>
			 		<td>${department.departmentId }</td>
			 		<td>${department.departmentName }</td>
			 		<td>${department.delCheck }</td>
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