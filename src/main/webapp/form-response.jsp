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
       <!-- Adding Cookies onto your website -->
       <%
            // Read Form Data
            String favLang = request.getParameter("favouriteLanguage");
            // Create Cookie..(takes in name and value of Cookie
            Cookie theCookie = new Cookie("myApp.favouriteLanguage", favLang);
            // Set the Life Span of the cookie.....It has to be in seconds
            theCookie.setMaxAge(60*60*24*365);
            //Send Cookie to browser
            response.addCookie(theCookie);
        %>
        Thanks! We set your favourite language to: ${param.favouriteLanguage}
        <br/><br/>
        <a href="Favourite.jsp">Return to HomePage</a>
</body>
</html>