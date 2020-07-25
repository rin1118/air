<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	if (session.getAttribute("id") == null) {
 	    response.sendRedirect("../login.jsp");

	} else {
		
		Dbcon dbcon = new Dbcon();
		
		String chk1 = request.getParameter("chk123");
		String chk2 = request.getParameter("chk456");
		String id = (String)session.getAttribute("id");
		String adult = request.getParameter("adult");
		String kid = request.getParameter("kid");
		
		String start_date = "";
		String depart_date = "";
		String airplane = "";
		String air_num = "";
		String start_city = "";
		String depart_city = "";
				
		if(!chk1.equals("") && chk1 != null) {
			ArrayList<AirBean> airlist = dbcon.kor_air_startList(chk1);
			
			for(int i=0; i<airlist.size(); i++){
				AirBean bean = (AirBean)airlist.get(i);
				start_date = bean.getAir_start_date();
		 		depart_date = bean.getAir_depart_date();
		 		airplane = bean.getAir_airplane();
		 		air_num = bean.getAir_num();
		 		start_city = bean.getAir_start_city();
		 		depart_city = bean.getAir_depart_city();
		 		
				System.out.println(start_date);
				System.out.println(depart_date);
				System.out.println(airplane);
				System.out.println(start_city);
				System.out.println(depart_city);
			}
			
			dbcon.air_insert(start_date, depart_date, airplane, start_city, depart_city, id, adult, kid);
		}
		
		if(!chk2.equals("") && chk2 != null) {
		
			ArrayList<AirBean> airlist2 = dbcon.kor_air_arriveList(chk2);
			
			for(int i=0; i<airlist2.size(); i++){
				AirBean bean = (AirBean)airlist2.get(i);
				start_date = bean.getAir_start_date();
		 		depart_date = bean.getAir_depart_date();
		 		airplane = bean.getAir_airplane();
		 		air_num = bean.getAir_num();
		 		start_city = bean.getAir_start_city();
		 		depart_city = bean.getAir_depart_city();
			}
			
			dbcon.air_insert(start_date, depart_date, airplane, start_city, depart_city, id, adult, kid);
			
		}
		
		response.sendRedirect("../main.jsp"); 
		
		
	}
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>