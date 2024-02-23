<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<P>스크립틀릿 사용</P>
<%@ page import="com.javaex.vo.UserVo"%>


<%
UserVo authUser = (UserVo) session.getAttribute("authUser");
%>

<div id="header" class="clearfix">
	<%
	if (authUser != null) { //로그인 성공 했을때
	%>
	<ul>
		<li><%=authUser.getName()%> 님 안녕하세요^^</li>
		<li><a href="/mysite3/user?action=logout" class="btn_s">로그아웃</a></li>
		<li><a href="/mysite3/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
	</ul>
	<%
	} else {//로그인 실패 했을때
	%>
	<ul>
		<li><a href="/mysite3/user?action=loginForm" class="btn_s">로그인</a></li>
		<li><a href="/mysite3/user?action=joinForm" class="btn_s">회원가입</a></li>
	</ul>
	<%
	}
	%>

</div>
<!-- //header -->

<P>el 사용</P>
<div id="header" class="clearfix">

	<ul>
		<li>${sessionScope.authUser.name} 안녕하세요^^</li>
		<li><a href="/mysite3/user?action=logout" class="btn_s">로그아웃</a></li>
		<li><a href="/mysite3/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
	</ul>
	<ul>
		<li><a href="/mysite3/user?action=loginForm" class="btn_s">로그인</a></li>
		<li><a href="/mysite3/user?action=joinForm" class="btn_s">회원가입</a></li>
	</ul>
	
	
</div>
<!-- //header -->

<P>el(scope생략) 사용</P>
<div id="header" class="clearfix">

	<%
	if (authUser != null) { //로그인 성공 했을때
	%>
	<ul>
		<li>${authUser.Name} 님 안녕하세요^^</li>
		<li><a href="/mysite3/user?action=logout" class="btn_s">로그아웃</a></li>
		<li><a href="/mysite3/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
	</ul>
	<%
	} else {//로그인 실패 했을때
	%>
	<ul>
		<li><a href="/mysite3/user?action=loginForm" class="btn_s">로그인</a></li>
		<li><a href="/mysite3/user?action=joinForm" class="btn_s">회원가입</a></li>
	</ul>
	<%
	}
	%>
	
</div>
<!-- //header -->







</body>
</html>