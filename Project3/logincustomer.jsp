<%@page import="com.dao.*"%>
<%@page import="com.model.SignupModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




	<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String name=request.getParameter("name");
	String mobile=request.getParameter("mobile");
	
		System.out.println("Data: "+name+" "+mobile);
	
	SignupModel m2 = new SignupModel();
	m2.setEmail(email);
	m2.setPassword(password);
	
	//System.out.println(m2.getName());
	

	WebDao w = new WebDao();
	SignupModel m = w.LoginCoustomer(m2);

	if (m != null) {
		session.setAttribute("webwing", true);
		session.setAttribute("myemail", email);
		
		
		
		

		response.sendRedirect("home.jsp");

	} else {

		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
	%>

</body>
</html>