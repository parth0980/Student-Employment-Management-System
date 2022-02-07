 <%@page import="java.sql.ResultSet"%>
                               <%@page import="java.sql.PreparedStatement"%>
                               <%@page import="java.sql.DriverManager"%>
                                <%@page import="java.sql.Connection"%>


<%
String nm=request.getParameter("nm");
    Connection con=null;
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject","root","");
   String qry="Select * from stureg where fname='"+nm+"'";
    PreparedStatement ps=con.prepareStatement(qry);
    ResultSet rs=ps.executeQuery();
    int count=1;
%><form>
    <table  class="table table-bordered">
        <tr >
            <th>Employee_id</th>
            <th>First_Name</th>
            <th>Last_Name</th>
            <th>Gender</th>
            <th>Address</th>
            <th>Mobile_No.</th>
            <th>Courses</th>
            <th>Image</th>
          
        </tr>
        
        
         <% if(rs.next())
    { %>
        <tr>
            <td ><%=count %></td>
            <td><%=rs.getString("fname") %></td>
            <td><%=rs.getString("lname") %></td>
            <td><%=rs.getString("gender") %></td>
            <td><%=rs.getString("address") %></td>
            <td><%=rs.getString("mobno") %></td>
            <td><%=rs.getString("courses") %></td>
            <td><img src="getimg2.jsp?id=<%=rs.getInt("stuid")%>" width="100" height="100"></td>
            
            <td><a href="#?id=<%=rs.getInt("stuid")%>" class="btn btn-danger" >Update</a></td>
            <td><a href="#?id=<%=rs.getInt("stuid")%>" class="btn btn-danger" >Delete</a></td>
        </tr>
    </table>
</form>