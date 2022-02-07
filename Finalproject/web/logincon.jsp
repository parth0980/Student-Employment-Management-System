
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>




<% 
    try
    {
    Connection con=null;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject","root","");
    
    String user=request.getParameter("uname");
    String pass=request.getParameter("pass");
   
    String qry="select * from register";
    PreparedStatement ps=con.prepareStatement(qry);
    ResultSet rs= ps.executeQuery();
    while(rs.next())
    {
    String name=rs.getString("uname");
    String pss=rs.getString("password");
    if(user.equals(name) && pass.equals(pss) )
    {
       
       session.setAttribute("user", name);
        response.sendRedirect("adminhomepage.jsp");
    }
    else
    {
       %>
       <script>alert("Login failed");window.location="login.jsp";</script>
      <%
    }
    }
    }
    catch(Exception e)
            {
            out.print(e);
            }
%>