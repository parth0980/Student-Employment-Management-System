<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject","root","");
    String qry="delete  from empreg where empid='"+id+"'";
    PreparedStatement ps=con.prepareStatement(qry);
    if(ps.executeUpdate()==1)
    {
    response.sendRedirect("empview.jsp");
    }else
    {
    %>
    <script><window.alert("error occured");></script>
<%
    }
    
%>