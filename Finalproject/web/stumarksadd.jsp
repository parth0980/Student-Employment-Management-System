<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    try
    {
int id=Integer.parseInt(request.getParameter("stuid"));
String date=request.getParameter("date");
String sub=request.getParameter("sub");
int mark=Integer.parseInt(request.getParameter("marks"));
Connection con=null;
  Class.forName("com.mysql.jdbc.Driver");
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject","root","");
  String qry="insert into marks(stuid,testdate,testsub,marksgot) value (?,?,?,?)";
  PreparedStatement ps=con.prepareStatement(qry);
  ps.setInt(1,id);
  ps.setString(2,date);
  ps.setString(3,sub);
  ps.setInt(4,mark);
  
  if (ps.executeUpdate()==1)
  {
      response.sendRedirect("stumarksview.jsp");
  }
    }
    catch(Exception e)
    {
        out.print(e);
    }
        
%>