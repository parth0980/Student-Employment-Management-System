<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String gen=request.getParameter("gen");
    String mobno=request.getParameter("mobno");
    String user=request.getParameter("uname");
    String pass=request.getParameter("pass");
    Connection con=null;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject","root","");
    String qry="insert into register (fname,lname,gender,mobileno,uname,password) value (?,?,?,?,?,?)";
    PreparedStatement ps=con.prepareStatement(qry);
    ps.setString(1, fname);
    ps.setString(2, lname);
    ps.setString(3, gen);
    ps.setString(4, mobno);
    ps.setString(5,user);
    ps.setString(6,pass);
    if(ps.executeUpdate()==1)
    {
    response.sendRedirect("login.jsp");
    }
    
%>