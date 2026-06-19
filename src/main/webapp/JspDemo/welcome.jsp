<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 1. Error Page Directive: If this JSP crashes, Tomcat forwards to error.jsp -->
<%@ page errorPage="error.jsp" %>

<!-- 2. Taglib Directive: Import JSTL Core to use <c:if> -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Welcome Dashboard</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .container { max-width: 600px; margin: auto; padding: 20px; border: 1px solid #ddd; border-radius: 8px; }
        .admin-badge { background-color: gold; padding: 5px 10px; border-radius: 20px; font-weight: bold; }
        .user-badge { background-color: #e7f3fe; padding: 5px 10px; border-radius: 20px; }
    </style>
</head>
<body>
    <div class="container">
        <!-- Include the header again -->
        <%@ include file="header.jsp" %>

        <h1>Welcome, ${param.username}!</h1>
        <hr/>

        <!--
            =============================================
            MODERN WAY (Using EL & JSTL) - KEEP THIS
            =============================================
        -->
        <h3>✅ Output using Expression Language (EL):</h3>
        <p>Your username is: <strong>${param.username}</strong></p>

        <!-- JSTL Logic: Checks the 'username' parameter -->
        <c:if test="${param.username == 'admin'}">
            <p style="color: green; font-size: 1.2em;">🔑 You have <span class="admin-badge">Administrator</span> privileges!</p>
        </c:if>

        <c:if test="${param.username != 'admin' && param.username != null}">
            <p style="color: blue;">👤 You are logged in as a <span class="user-badge">Standard User</span>.</p>
        </c:if>

        <hr/>

        <!--
            =============================================
            OLD / MESSY WAY (Using Scriptlets) - COMMENTED OUT
            =============================================
            Uncomment this block just to see how ugly it gets, and why we use EL/JSTL!
        --%>
        <%--
        <h3>❌ Output using Old Scriptlets (DO NOT USE IN REAL PROJECTS):</h3>
        <%
            // Getting the parameter using the 'request' implicit object
            String name = request.getParameter("username");

            // Printing to the browser using the 'out' implicit object
            out.println("<p>Hello, " + name + "</p>");

            // Doing logic with Java code inside HTML is a nightmare
            if ("admin".equals(name)) {
                out.println("<p>You are Admin (Scriptlet version)</p>");
            }
        %>
        --%>

        <br/>
        <a href="login.jsp">← Go back to Login page</a>
    </div>
</body>
</html>