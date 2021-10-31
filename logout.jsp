<%-- 
    Document   : logout
    Author     : Kathirvel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Logout</title> 
        
    </head>
    <body bgcolor="#66d9ff">
        <%
            if(session!=null)
            {
                session.invalidate();
            }
        %>
            <form action="login_page.html">
            <h2><center>u are logged out</h2>
            <input type="submit" value="Click here for login"></center>
            </form>
    </body>
</html>
