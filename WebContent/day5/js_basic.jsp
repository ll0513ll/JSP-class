<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	
	var add = function(a,b){
		return a+b;
	}
	var multi = function(a,b){
		return a*b;
	}
	
	function other_form(){
		
		var r1 = add(10,20);
		var r2 = multi(10,20);
		alert(r1);
		alert(r2);
	}
	function connectServer(){
		var xhp = new XMLHttpRequest();
		xhp.onreadystatechange = function(){
			if(this.readyState==4&&this.status==200){
				var text = this.responseText;
				alert(text);
			}
			
		}
		xhp.open("GET", "server.jsp",true);
		xhp.send();
	}

</script>
</head>
<body>
<button onclick ="connectServer()">서버접속</button>
<button onclick ="welcome()">자바 스크립트 실행</button>
<button onclick ="example2()">example2</button>

<button onclick = "other_form()">other_form</button>
</body>
</html>