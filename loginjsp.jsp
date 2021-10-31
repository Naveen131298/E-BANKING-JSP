<%-- 
    Document   : loginjsp
    Created on : Dec 24, 2018, 1:39:59 PM
    Author     : Administrator
--%>

<%@page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>welcome</title>
    </head>
    <body>
         <%
            int r=0;
                String s1=request.getParameter("user");
		String s2=request.getParameter("pass");
                try
		{			
			Class.forName ("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3308/db","root","root");
			Statement s=c.createStatement();
			ResultSet rs=s.executeQuery("select * from register where user='"+s1+"'and pass='"+s2+"'" );
			
			if(rs.next())
                        {
                            out.println(rs.getString(1));
                            session.setAttribute("user",rs.getString(4));
                               response.sendRedirect("page1.jsp");
                        }
                        else
                        {
                                %>
                                Response.Write("<script language='javascript'>window.alert('Invalid username or password');window.location='login_page.html';</script>");
                                <%
                            
                            
                           
                 
                        }    
                        
                       
                            //
                        
                }
		catch(Exception e)
		{
			out.println(e);
		}
        %>
    </body>
</html>
