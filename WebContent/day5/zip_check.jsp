<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	function work_close(){
		
		opener.document.getElementById("zip1").value = "123";
		opener.document.getElementById("zip2").value = "456";
		opener.document.getElementById("isZipCheck").value = true;
		self.close();
		
	}


</script>
</head>
<body>
<button onclick = "work_close()">닫기</button>
</body>
</html>