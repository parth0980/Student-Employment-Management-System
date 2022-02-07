    

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    try
    {
int id=Integer.parseInt(request.getParameter("stuid"));
int dp=Integer.parseInt(request.getParameter("dp"));
int da=Integer.parseInt(request.getParameter("da"));
int ts=Integer.parseInt(request.getParameter("tf"));
int paf=Integer.parseInt(request.getParameter("paf"));
int pef=Integer.parseInt(request.getParameter("pef"));
  Connection con=null;
  Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject","root","");
  String qry="insert into fees(stuid,pre_days,abs_days,totalfees,paidfees,pendingfees) value (?,?,?,?,?,?)";
  PreparedStatement ps=con.prepareStatement(qry);
  ps.setInt(1,id);
  ps.setInt(2,dp);
  ps.setInt(3,da);
  ps.setInt(4,ts);
  ps.setInt(5,paf);
  ps.setInt(6,pef);
  if (ps.executeUpdate()==1)
  {
      response.sendRedirect("stufeesview.jsp");
  }
    }
    catch(Exception e)
    {
        out.print(e);
    }
        
%>