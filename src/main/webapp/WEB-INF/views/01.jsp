<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!--■표현언어(Expression Language)
•웹 페이지에 값을 표시(표현),하는 데 사용되는 태그
•JSP의 출력 문법을 보완하는 역할
•${} 를 사용한다.
•표현언어의 식을 계산해서 출력한다.
•null 는 공백으로 출력한다.

${member.name}  
■데이터 타입
•정수형, 실수형, 문자열형, 논리형 , null-->


<body>
	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>데이터형</h3>


	<!--  ${no} -->
	정수형: ${10}
	<br> 실수형: ${7.5}
	<br> 문자형: ${"오지원"} ${'오지원'}
	<br> 논리형: ${true} ${false}
	<br> null: ${null}




</body>
</html>