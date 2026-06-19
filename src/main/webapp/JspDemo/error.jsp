<%@ page isErrorPage="true" contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Oops! System Error</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; background-color: #fff0f0; }
        .error-box { max-width: 600px; margin: auto; padding: 30px; background: white; border: 2px solid red; border-radius: 8px; }
        .error-details { background: #f8f8f8; padding: 15px; border-left: 4px solid red; font-family: monospace; }
    </style>
</head>
<body>
    <div class="error-box">
        <h2 style="color: red;">💥 Something went wrong!</h2>
        <p>We encountered an unexpected error. The development team has been notified.</p>

        <!-- Using the implicit 'exception' object (only available because isErrorPage="true") -->
        <div class="error-details">
            <strong>Error Message:</strong> <%= exception.getMessage() %>
        </div>
        <br/>
        <a href="login.jsp">🔙 Return to Safety (Login)</a>
    </div>
</body>
</html>