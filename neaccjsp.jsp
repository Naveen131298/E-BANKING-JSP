<%-- 
    Document   : register.jsp
    Created on : Dec 20, 2018, 1:49:19 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page language="java" import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register page</title>
    </head>
    <body>
        <%
                String s1=request.getParameter("acno");
		String s2=request.getParameter("name");
		String s3=request.getParameter("addr");
                String s6=request.getParameter("phno");
                String s7=request.getParameter("gender");
                String s8=request.getParameter("acctype");
                String s9=request.getParameter("branch");
                String s10=request.getParameter("bal");
     		try
		{
			Class.forName ("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3308/db","root","root");
			Statement s=c.createStatement();
			int i=s.executeUpdate("insert into newacc values('"+s1+"','"+s2+"','"+s3+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"')");
			if(i!=0)
			{
				out.println("<html><body><center>");
                                out.println("<b>registration success</b>");
				out.println("<a href='page1.jsp'>click here for HomePage</a>");
				out.println("</center></body></html>");
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}
            %>
    </body>
</html>

