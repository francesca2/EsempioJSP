<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ import aaaa.Rubrica%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Ciao!</h1>

<% 

int a=4;
out.println("ciao da Java"); 

%>

<h1><%=a/2 %></h1>

<%!
public int somma(int c, int b){
	return c+b;
}
%>

Rubrica r=new Rubrica();

</body>
</html>