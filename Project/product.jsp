<%@page import="com.dao.WebDao"%>

<%@page import="com.model.ImageModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
<%
	
List<ImageModel> list = WebDao.getAll();
request.setAttribute("i", list);

%>

	
		<c:forEach items="${i}" var="m">
			<center>
			
			
				<br>
				<br>
				<p>
					<h2>${m.getName()}</h2>
				</p>
				
				
		
				<p>
					<img width="500px" height="200px" src="${m.getImage()}">
				</p>
				
			</center>
			
			<%-- 	<td>
					<img src="ProductImg.jsp?id=${m.getId()}" width="500px" height="500px">
				</td> --%>
			</tr>
			<%-- <tr>
				 <td align="right">
					<a href="ProductView.jsp?id=${m.getItID()}">
						<input type="submit" value="Show More Detail">
					</a>
				</td> 
			</tr>
			 --%>
		</c:forEach>
	
	</table>

</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>