<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<%!
int count=0;
%>
<%
for(int i=0;i<25;i++)
{
	//out.println("i Value"+i);
 
	%>
	<tr>
	<%
	for(int j=0;j<10;j++)
	{
	
	%>
	<td><input type="button" value="<%=++count %>"></td>
	
	
	
	
	<%
	}
	%>
	</tr>
	<% 
 
}

%>
</table>
</body>
</html>