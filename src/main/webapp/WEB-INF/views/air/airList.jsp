<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- jQuery  -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- bootstrap JS -->
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <!-- bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
  	
  	<script>
	  function checkOnly(chk){
	
	    var obj = document.getElementsByName("chk1");
	     	    
	    for(var i=0; i<obj.length; i++){
	      if(obj[i] != chk){
	                obj[i].checked = false;
	      }
	    }
	  }
	  
	  function checkOnly2(chk){
			
	    var obj = document.getElementsByName("chk2");
        for(var i=0; i<obj.length; i++){
              if(obj[i] != chk){
                    obj[i].checked = false;
              }
        }
      }
	  
	  function submitCheck() {
		var f1 = document.getElementById("airinfo");
		var obj = document.getElementsByName("chk1");
		var obj2 = document.getElementsByName("chk2");
		var ch = document.getElementById("chk123");
		var ch2 = document.getElementById("chk456");
	              
		for (var i = 0; i < obj.length; i++) {
			if (obj[i].checked) {
				ch.value = obj[i].value;		
			}
		}
		
		for (var i = 0; i < obj2.length; i++) {
			if (obj2[i].checked) {
				ch2.value = obj2[i].value;			
			}
		}
		
		alert("예약이 완료 되었습니다.");
		f1.submit();
	  }
	</script>
</head>
<body>
	<form name="airinfo" id="airinfo" method="get" action="air_save.jsp">
    <div class="row">	
        <button class="btn btn-outline btn-primary pull-right" id="selectChk" onclick="submitCheck();">선택</button>
        <h3>출발편  <%--start_city --%>  <%--depart_city--%> <%--start_date--%><span class="txt_small"></span> </h3>
        <table id="example-table-3" width="100%" class="table table-bordered table-hover text-center">
            <thead>
                <tr>
                    <th>선택</th>
                    <th>항공사</th>
                    <th>항공편</th>
                    <th>출발</th>
                    <th>도착</th>
                    <th>좌석</th> 
                    <th>가격</th>
                </tr>
            </thead>
            <tbody>
			<!-- forEach 자리 -->
                <tr> 
                	<input type="hidden" name="adult" value=<%=adult%>>
                	<input type="hidden" name="kid" value=<%=kid%>>
                    <td>
                    	<input type="checkbox" name="chk1" value=<%=Air_num%> onclick="checkOnly(this);">
                    </td>
                    <td class=""><%--airbean_start.getAir_airplane()--%></td>		                        
                    <td class=""><%--airbean_start.getAir_num()--%></td>
                    <td class=""><%--airbean_start.getAir_start_time()--%></td>
                    <td class=""><%--airbean_start.getAir_depart_time()--%></td>
                    <td class=""><%--airbean_start.getAir_seat()--%></td>
                    <td class=""><%--airbean_start.getAir_cost()--%></td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="row">
    	<h3>도착편 <%--depart_city --%> > <%--start_city --%> <%--depart_date--%><span class="txt_small"></span> </h3>
        <table id="example-table-3" width="100%" class="table table-bordered table-hover text-center">
            <br>          
            <thead class="head">
                <tr>
                    <th>선택</th>
                    <th>항공사</th>
                    <th>항공편</th>
                    <th>출발</th>
                    <th>도착</th>
                    <th>좌석</th>
                    <th>가격</th>
                </tr>    
            </thead>
            <tbody class="body">
			<!-- forEach 자리 -->		
                 <tr>
                    <input type="hidden" name="adult" value=<%=adult%>>
                	<input type="hidden" name="kid" value=<%=kid%>>
                	<td><input type="checkbox" name="chk2" value=<%=airbean_start.getAir_num()%> onclick="checkOnly2(this);"></td>
					<td class="" name="air_airplane"><%=airbean_start.getAir_airplane()%></td>		                        
                    <td class="" name="air_num"><%=airbean_start.getAir_num()%></td>
                    <td class="" name="air_start_time"><%=airbean_start.getAir_start_time()%></td>
                    <td class="" name="air_dearpt_time"><%=airbean_start.getAir_depart_time()%></td>
                    <td class="" name="air_seat"><%=airbean_start.getAir_seat()%></td>
                    <td class="" name="air_cost"><%=airbean_start.getAir_cost()%></td>
                 </tr>
            </tbody>
        </table>
    </div>
   	 <input type="hidden" id="chk123" name="chk123" value="">
     <input type="hidden" id="chk456" name="chk456" value="">
   </form>
</body>
</html>
