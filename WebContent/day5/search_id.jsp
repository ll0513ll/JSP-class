<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Id 추리기</title>
<script type="text/javascript">
	function search_id(){
		
		id = "user";
		if(id=="user"){
			alert("사용가능합니다!");
			
		}else{
			alert("다른 아이디를 사용하세요.");
		}
	}

</script>
</head>
<body>
<form action="id_check.jsp" method ="post">

<%
	String id = request.getParameter("id");
	if(id.equals("user")){
		
		out.print("사용가능한 아이디 입니다.");
	}else{
		
		out.print("다른 아이디를 사용해 주세요.");
	}

%>
<input type = "submit" value = "확인">
</form>
</body>
</html>