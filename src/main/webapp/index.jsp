
<html>
<body>
<h1>Introduction to JSPs</h1>
<! Simple Hello World -->
<p>Hello JSP World.</p>
The date is <%= new java.util.Date() %>

<br></br>
<! Converting a string to upper case using a java expression-->
Saul in uppercase is: <%= new String("Saul").toUpperCase() %>
</body>
</html>