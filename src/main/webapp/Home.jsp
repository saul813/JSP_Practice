<%@ page import = "com.example.MyClass" %>
<html>
<body>
<jsp:include page= "Myheader.html" />
<br></br>
<h1>Introduction to JSPs</h1>
<! Simple Hello World -->
<p>Hello JSP World.</p>
<h2>Working with JSP Expressions</h2>
The date is <%= new java.util.Date() %>

<br></br>
<! Converting a string to upper case using a java expression (Objects)-->
Saul in uppercase is: <%= new String("Saul").toUpperCase() %>

<br></br>
<! Multiplication of numbers-->
25 multiplied by 4 is: <%= 25*4 %>

<br></br>
<! Working with booleans-->
Is 14 less than 8? <%= 14<8 %>

<br></br>
<h2>Working with JSP Scriplets</h2>
<%
for(int i = 0; i < 5; i++){
    out.println("<br/>It's great to code from Scratch: "+ (1+i));
 }
 %>

 <br></br>
 <h2>Working with JSP Declarations</h2>
 <%!
    String transformToLowerCase(String data) {
    return data.toLowerCase();
    }
 %>
 Lower case of "SABUNYO sAUL": <%= transformToLowerCase("SABUNYO SAUL") %>

 <br></br>
  <h2>Working with Classes in JSPs</h2>
  <%
  MyClass myc = new MyClass();
  String lowercase = myc.takeToLowerCase("NABUMALI HIGH SCHOOL");
   %>
   Output from the linked Java Class is: <%= lowercase %>

  <br></br>
  <h2>Working with Built-in Objects in JSPs</h2>
  <h2>1. Request-Object</h2>
  The browser is: <%= request.getHeader("User-Agent") %>
  <br></br>
  The Request Language is: <%= request.getLocale() %>

  <br></br>
  <h2>Including Files in Jsps</h2>
  <jsp:include page= "MyFooter.jsp" />
</body>
</html>