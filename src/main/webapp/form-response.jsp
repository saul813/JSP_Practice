<html>
<head>User Confirmation</head>
<body>
      <br/><br/>
      The User has Confirmed: ${param.firstName}  ${param.lastName}
       <br/><br/>
       Country:   ${param.country}
       <br/><br/>
       Favourite PL:   ${param.favouriteLanguage}
       <br/><br/>
       <!-- Display list for Favourite_IDES -->
       Favourite IDEs:
       <ul>
           <%
                String[] ides = request.getParameterValues("favourite_IDE");

                for (String ide: ides) {
                out.println("<li>" + ide + "</li>");
                }
            %>
       </ul>
       <br/><br/>
</body>
</html>