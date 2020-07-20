<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.*" %>
<!DOCTYPE html>
<html>
<head>
<%
String content = request.getParameter("content1");
String title = request.getParameter("title");
String name = request.getParameter("name");
String id = (String)session.getAttribute("id");

Dbcon dbcon = new Dbcon();
StoryBean sbean = new StoryBean();

System.out.println(content);
System.out.println(title);
System.out.println(name);

sbean.setTitle(title);
sbean.setName(name);
sbean.setContent(content);
sbean.setId(id);

dbcon.storyinsert(sbean);  

%>
<script>
alert("게시글 등록이 완료됐습니다.");
location.href="Storyboard.jsp";
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 여기 아직 아무것도 안했으  밑에껀 지워도돼-->
</html>