<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<body>
	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>반목문</h3>
	
	<h4>스크립틀릿 for문</h4>
	<%@ page import="java.util.List" %>
	<%@  page import="com.javaex.vo.UserVo"%>
	
	   <%
   
      List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
   
   %>
	
	<table border="1">
	  <thead>
	    <tr>
	       <th>번호</th>
	       <th>이름</th>
	       <th>이메일</th>
	       <th>패스워드</th>
	       <th>성별</th>
	    </tr>
	  </thead>	
	  <tbody>
	  
	  <%
	  for(int i=0; i<userList.size(); i++){  
	 /* for(UserVo Vo : userList){*/
	  %>
	    <tr>
	       <td><%=userList.get(i).getNo()%></td>
	       <td><%=userList.get(i).getName()%></td>
	       <td><%=userList.get(i).getEmail()%></td>
	       <td><%=userList.get(i).getPassword()%></td>
	       <td><%=userList.get(i).getGender()%></td>
	    </tr>	 
	    <%
	      }
	    %>
	   
	  </tbody>
	  
	  <br><br><br><br><br><br><br><br><br>
	  
	   <thead>
	    <tr>
	       <th>번호</th>
	       <th>이름</th>
	       <th>이메일</th>
	       <th>패스워드</th>
	       <th>성별</th>
	    </tr>
	  </thead>	
	  <tbody>
	  
	  <%
	 for(UserVo Vo : userList){
	  %>
	    <tr>
	       <td><%=Vo.getNo()%></td>
	       <td><%=Vo.getName()%></td>
	       <td><%=Vo.getEmail()%></td>
	       <td><%=Vo.getPassword()%></td>
	       <td><%=Vo.getGender()%></td>
	    </tr>	 
	    <%
	      }
	    %>
	   
	  </tbody>
	 
	</table>
	
	<h4>jstl for 문</h4>







</body>
</html>