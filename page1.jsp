<%-- 
    Document   : welcome
    Created on : Dec 20, 2018, 3:39:20 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head style="margin-top: 15%">
	
	<title>Welcome </title>
	

</head>
    <body background="images.jpg"><%
        String u=(String)session.getAttribute("user"); %>
        <div align="right" style="color: red">

            <%="Hello "+u%>  &nbsp; 
            <div align="right">
            <a href="logout.jsp">logout</a>
            </div>
             <center>
                 <b><h1 style="text-align: center; margin-bottom: 10%;margin-top: 5%;font-size: 40px;color: #2d1a0c;font-family: Mistral">Welcome </h1></b>
                 <a href="newacc.html" style="background-color: #00bfff; padding: 20px 28px; color: white;font-size: 25px;font-family: Lucida Handwriting">New Account Creation</a><br><br><br><br>
	 	<a href="withdrawal.html" style="background-color: #00bfff; padding: 20px 28px; color: white;font-size: 25px;font-family: Lucida Handwriting">Withdraw</a><br><br><br><br>
	 <a href="deposit.html" style="background-color: #00bfff; padding: 20px 42px; color: white;font-size: 25px;font-family: Lucida Handwriting">Deposit</a><br><br><br><br>
	 <a href="balance.html" style="background-color: #00bfff; padding: 20px 34px; color: white;font-size: 25px;font-family: Lucida Handwriting">Balance</a><br><br><br><br>
	 

             </center>
        
        
    </body>
</html>
