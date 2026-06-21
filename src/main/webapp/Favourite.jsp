<html>
<body>
<h3>Favourites</h3>
<!-- Read the favourite Programming Language Cookie -->
<%
    //Default ....if there are no cookies
    String favLang ="Java";
    //Get the cookies from the browser request
    Cookie[] theCookies = request.getCookies();
    //Find our favourite Language Cookie
    if(theCookies != null){
       for (Cookie tempCookie: theCookies) {
            if("myApp.favouriteLanguage".equals(tempCookie.getName())){
                favLang = tempCookie.getValue();
                break;
            }
       }

    }
 %>
 <!--Showing the Personalized Page based on the Cookie -->
 <h4>Personalized Books For <%= favLang %></h4>
 <ul>
     <li>Introduction to <%= favLang %></li>
     <li><%= favLang %> Programming Made Easy</li>
     <li><%= favLang %> Basics</li>
 </ul>
 <hr>
 <a href="Form.html">Change Favourites</a>
</body>
</html>