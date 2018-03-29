<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자바스크립트 연습</title>
<script type="text/javascript">
		
		function welcome(){
			document.write("HelloWorld!  javaScript!");
			alert("밥먹으러 가세요");
		}
		function example1(){
			//데이터타입은 하나다.(var)
			var name = "admin";
			var kor = 30;
			var average = 30.2;
		}
		function example2(){
			for(var i=0;i<10;i++){
				document.write(i+1);
			}
			var total = sum2(10,20);
			alert(total+"from return function");
		
		}
		function sum(a,b){
			var sesult = a+b;
			alert(result);
		}
			
		function sum2(a,b){
			return a+b;
		}
		
		
</script>
</head>
<body>
<button onclick="welcome()">자바스크립트 실행</button>
<button onclick="example2()">example2</button>
</body>
</html>