<%@page import="kr.co.bit.day4.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

	function ID_Check(){
		//alert("확인 되었습니다.");
		var checkid = document.getElementById("userid").value;
		window.open("id_check.jsp?id="+checkid,"","width=800px height=600px");
		return false;
	
	}
	function check_empty(){
		var val = document.getElementById("pw").value;
		if(val ==''){
		alert("empty~");
	}
		return false;
}
	function checkbox_check(){
		var eles = document.getElementsByClassName("langs");//배열
		alert(eles.length);
		var count = 0;
		for(var i=0;i<eles.length;i++){
			
			if(eles[i].checked){
				//alert((i+1)+"checked");
				count++;
			}
		}
		alert("selected count is"+count)
		return false;
	}
	function select_check(){
		var val = document.getElementById("project").value;
		if(val=="0"){
			alert("프로젝트 경험을 선택해 주세요.")
		}
		return false; 
	}
	function final_check(){
		var val = document.getElementById("isIdCheck").value;
		var val2 = document.getElementById("isZipCheck").value;
		alert(val2);
		return false;
	}
	function zip_check(){
		var val = document.getElementById("zipId").value;
		window.open("zip_check.jsp","","width=800px height=600px");
		return false;
	}
</script>
</head>
<body>
<%
	ArrayList<MemberVO>list = new ArrayList<MemberVO>();
	MemberVO vo = (MemberVO)session.getAttribute("vo");
	if(vo==null){
		vo= new MemberVO();
		vo.setId("");
		vo.setPw("");
		vo.setName("");
		vo.setEmail("");
		vo.setZip1("");
		vo.setZip2("");
		vo.setAddr1("");
		vo.setAddr2("");
		vo.setTool("");
		vo.setLang(new String[]{"","","",""});
		vo.setProject("");
	}
%>
<form action="process_member.jsp">
	<table>
		<tr><td>아이디</td><td><input type="text" name="id" id="userid" readonly="readonly" onclick = "ID_Check()" value="<%=vo.getId() %>"></td>
		<td><button onclick="return ID_Check()">ID check</button></td><td>
		<input type ="hidden" name = "isIdCheck" value="false" id = "isIdCheck"></td></tr>
		
		<tr><td>패스워드</td><td><input type="password" name="pw" id = "pw" value="<%=vo.getPw() %>">
		</td><td><button onclick="return check_empty()">빈칸체크</button></td><td></td></tr>
		
		<tr><td>이름</td><td><input type="text" name="name" value="<%=vo.getName() %>"></td><td></td><td></td></tr>
		<tr><td>우편번호</td><td><input type="text" onclick = "zip_check()" name="zip1" id = "zip1" readonly="readonly" value="<%=vo.getZip1() %>"size="3">-<input type="text" name="zip2" onclick="zip_check()"readonly="readonly" id = "zip2" value="<%=vo.getZip2() %>"size="3"></td>
		<td><button onclick="return zip_check()" id = "zipId">우편번호 검색</button></td>
		<td><input type = "hidden" name = "zipCheck" value ="false" id="isZipCheck"></td></tr>
		
		<tr><td>주소1</td><td><input type="text" name="addr1" value="<%=vo.getAddr1() %>"size="30"></td><td></td><td></td></tr>
		<tr><td>주소2</td><td><input type="text" name="addr2" value="<%=vo.getAddr2() %>"size="30"></td><td></td><td></td></tr>
		
		<tr><td>이메일</td><td><input type="text" name="email" value="<%=vo.getEmail() %>"></td><td></td><td></td></tr>
		
		<tr><td>사용언어</td>
			<td><input type="checkbox" name="lang" class = "langs" value="0"<%=vo.getLang()[0].equals("0")?"checked":""%>>자바
					<input type="checkbox" name="lang" class = "langs" value="1"<%=vo.getLang()[0].equals("1")?"checked":""%>>파이썬
					<input type="checkbox" name="lang" class = "langs" value="2"<%=vo.getLang()[0].equals("2")?"checked":""%>>C++
					<input type="checkbox" name="lang" class = "langs" value="3"<%=vo.getLang()[0].equals("3")?"checked":""%>>C
			</td><td><button onclick = "return checkbox_check()">체크박스확인</button></td><td></td></tr>
	
			<tr><td>프로젝트경험</td>
				<td><select name = "project" id="project">
						<option value ="0"<%=vo.getProject().equals("0")?"selected":"" %>>프로젝트 경험
						<option value ="1"<%=vo.getProject().equals("1")?"selected":"" %>>1~2회
						<option value ="2"<%=vo.getProject().equals("2")?"selected":"" %>>3~4회
						<option value ="3"<%=vo.getProject().equals("3")?"selected":"" %>>5~6회
						<option value ="4"<%=vo.getProject().equals("4")?"selected":"" %>>7회 이상
						</td>
			<td><button onclick = "return select_check()">select 체크</button></td><td></td>
		</tr>
		
		<tr><td colspan="4"><input type="submit" value="가입" onclick="return final_check()"></td></tr>
		
	</table>
</form>

</body>
</html>