<%@page import="kr.co.bit.day4.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원등록</title>
</head>
<body>
<%

	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("fullname");
	String zip1 = request.getParameter("zip1");
	String zip2 = request.getParameter("zip2");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String email = request.getParameter("email");
	String lang[] = request.getParameterValues("lang");
	String tool = request.getParameter("tool");
	String project = request.getParameter("project");
	
	MemberVO vo = new MemberVO(id,pw,name,zip1,zip2,addr1,addr2,email,lang,tool,project);
	
	vo.setId(id);
	vo.setPw(pw);
	vo.setName(name);
	vo.setZip1(zip1);
	vo.setZip2(zip2);
	vo.setAddr1(addr1);
	vo.setAddr2(addr2);
	vo.setEmail(email);
	vo.setLang(lang);
	vo.setTool(tool);
	vo.setProject(project);
	
	out.print(vo);
	response.sendRedirect("regist_member");
	


%>
</body>
</html>