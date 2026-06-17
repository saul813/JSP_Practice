
<%@ page language = "java" contentType= "text/html; charset=UTF-8" pageEncoding= "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <title> My First JSP Page</title>
</head>
<body
     <h1> Hello, JSP-World!</h1>
     <p>The Current server time is: <%= new java.util.Date() %></p>
     <%
        int total = 0;
        for (int i = 0; i <= 5; i++){
             total += i;
        }
     %>
     <p>The Sum of numbers 1 to 5 is: <%= total %></p>
</body>
</html>