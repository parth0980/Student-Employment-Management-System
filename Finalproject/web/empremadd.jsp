<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    try
    {
int id=Integer.parseInt(request.getParameter("empid"));
String remark=request.getParameter("rem");
Connection con=null;
  Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject","root","");
  String qry="insert into remarks(empid,remarkvalue) value (?,?)";
  PreparedStatement ps=con.prepareStatement(qry);
  ps.setInt(1,id);
  ps.setString(2,remark);
  
  if (ps.executeUpdate()==1)
  {
      response.sendRedirect("empremview.jsp");
  }
    }
    catch(Exception e)
    {
        out.print(e);
    }
        
%>