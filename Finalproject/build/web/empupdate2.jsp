<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
 int id=Integer.parseInt(request.getParameter("empid"));
  String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String gen=request.getParameter("gen");
    String add=request.getParameter("add");
    String mobno=request.getParameter("mobno");
    String spe=request.getParameter("spe");
     InputStream istr=null;
    Part filepart=request.getPart("fname");
    String finame=filepart.getSubmittedFileName();
    String ftype=filepart.getContentType();
    double fsize=filepart.getSize();
    istr=filepart.getInputStream();
    
 Connection con=null;
 Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject","root","");
 String qry="update empreg set fname='"+fname+"',lname='"+lname+"',gender='"+gen+"',address='"+add+"',mobno='"+mobno+"',specialization='"+spe+"' where empid='"+id+"'";
 PreparedStatement ps=con.prepareStatement(qry);
 if (ps.executeUpdate()==1)
 {
 response.sendRedirect("empview.jsp");
 }
%>