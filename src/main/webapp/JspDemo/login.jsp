<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .container { max-width: 400px; margin: auto; padding: 20px; border: 1px solid #ddd; border-radius: 8px; }
        input[type="text"], input[type="password"] { width: 100%; padding: 10px; margin: 8px 0; }
        input[type="submit"] { background-color: #4CAF50; color: white; padding: 12px; border: none; width: 100%; cursor: pointer; }
    </style>
</head>
<body>

    <div class="container">
        <!-- Including the header -->
        <%@ include file="header.jsp" %>

        <h3>Please Log In</h3>

        <!--
            ACTION: Points to welcome.jsp.
            METHOD: POST (so data is not shown in the URL bar).
        -->
        <form action="${pageContext.request.contextPath}/JspDemo/welcome.jsp" method="POST">
            <label>Username:</label>
            <input type="text" name="username" placeholder="Enter username" required />

            <label>Password:</label>
            <input type="password" name="password" placeholder="Enter password" required />

            <input type="submit" value="Login" />
        </form>
        <p style="margin-top:15px; font-size:0.9em; color:gray;">Hint: Type 'admin' to see the special message.</p>
    </div>

</body>
</html>