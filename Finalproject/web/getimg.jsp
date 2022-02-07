<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    
    int id=Integer.parseInt(request.getParameter("id"));
    Connection con=null;
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject","root","");
    String qry="Select * from empreg where empid=?";
    PreparedStatement ps=con.prepareStatement(qry);
    ps.setInt(1,id);
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
    Blob blob=rs.getBlob("fdata");
    byte byteArray[] = blob.getBytes(1, (int)blob.length());
    response.setContentType("image/jpg");
    OutputStream os= response.getOutputStream();
    os.write(byteArray);
    os.flush();
    os.close();
    }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    finally
    {
        if(con!=null)
        {
            try
            {
                con.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
    }


%>