    

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    try
    {
int id=Integer.parseInt(request.getParameter("empid"));
int dp=Integer.parseInt(request.getParameter("dp"));
int da=Integer.parseInt(request.getParameter("da"));
int ts=Integer.parseInt(request.getParameter("ts"));
int ns=Integer.parseInt(request.getParameter("ns"));
String sg=request.getParameter("sg");
  Connection con=null;
  Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject","root","");
  String qry="insert into salary(empid,present_days,absent_days,total_sal,net_sal,sal_given) value (?,?,?,?,?,?)";
  PreparedStatement ps=con.prepareStatement(qry);
  ps.setInt(1,id);
  ps.setInt(2,dp);
  ps.setInt(3,da);
  ps.setInt(4,ts);
  ps.setInt(5,ns);
  ps.setString(6,sg);
  if (ps.executeUpdate()==1)
  {
      response.sendRedirect("empsalview.jsp");
  }
    }
    catch(Exception e)
    {
        out.print(e);
    }
        
%>