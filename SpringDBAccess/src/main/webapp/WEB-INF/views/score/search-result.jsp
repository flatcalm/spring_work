<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>${stu.stuName} 학생의 성적 정보 조회</h2>
	<p>
		# 국어 : ${stu.kor}점 <br>
		# 영어 : ${stu.eng}점 <br>
		# 수학 : ${stu.math}점 <br>
		# 총점 : ${stu.total}점 <br>
		# 평균 : ${stu.average}점
	</p>
	
	<a href="${pageContext.request.contextPath}/score/search">점수 개별 조회</a>

</body>
</html>