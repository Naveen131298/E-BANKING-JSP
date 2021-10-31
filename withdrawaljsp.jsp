
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page language="java" import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Withdrawal Page</title>
    </head>
    <body bgcolor="#66d9ff">
        <% String u=(String)session.getAttribute("user"); %>
        <div align="right" style="color: red">

            <%="Hello "+u%>  
            
            </div align="right">
            <div align="right">
            <a href="logout.jsp">logout</a>
            </div>

            <% 
            String s1=request.getParameter("acno");
            try
		{
			Class.forName ("com.mysql.jdbc.Driver");
			Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3308/db","root","root");
			Statement s=c.createStatement();
                        ResultSet rs=s.executeQuery("select * from newacc where acno='"+s1+"'" );
			if(rs.next())
                        {
                            
                            String bal=rs.getString(8);
                            %>
                            <center>
    
    
	<h1 style="font-size:30px; text-align:center; color: #CC0033 ">balance page </h1><br><br>
        <form action="withdrawamt.jsp" method="post">
        <b>Account no</b>        : <input type="text" name="acno" value="<%out.println(rs.getString(1));%>"><br><br>
         <b>Balance</b>        : <input type="text" name="bal" value="<%out.println(bal);%>" readonly><br><br>
          <b>Withdraw Amount</b>        : <input type="text" name="wd" required><br><br>
          
              <input type="submit" value="Withdraw" name="" >
          </form>
   </center> 
    <%
           
        
                            
                         
                        }
                        else
                        {
                                %>
    Response.Write("<script language='javascript'>window.alert('Invalid Account Number');window.location='withdrawal.html';</script>");
                                <%
                            //response.sendRedirect("login.html");
                            
                           
                 
                        }    
                }
            catch(Exception e)
                    {
                      out.println(e);  
                    }
                
            
            %>
        
    </body>
</html>
