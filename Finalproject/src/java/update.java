

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("~/fileupload")
@MultipartConfig(maxFileSize = 1024*1024*10)

public class update extends HttpServlet {

    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id=Integer.parseInt(request.getParameter("empid"));
            String fnname=request.getParameter("fname");
           String lname=request.getParameter("lname");
           String gen=request.getParameter("gen");
           String add=request.getParameter("add");
           String mobno=request.getParameter("mobno");
           String spe=request.getParameter("spe");
           InputStream istr=null;
           Part filepart=request.getPart("upload");
           String finame=filepart.getSubmittedFileName();
           String ftype=filepart.getContentType();
           double fsize=filepart.getSize();
           istr=filepart.getInputStream();
           Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject","root","");
            String qry="update empreg set fname=?,lname=?,gender=?,address=?,mobno=?,specialization=?,finame=?,ftype=?,fsize=?,fdata=? where empid='"+id+"'";
            PreparedStatement ps=con.prepareStatement(qry);
             ps.setString(1, fnname);
           ps.setString(2, lname);
           ps.setString(3, gen);
           ps.setString(4,add);
           ps.setString(5,mobno);
           ps.setString(6,spe);
           ps.setString(7,finame);
           ps.setString(8,ftype);
           ps.setDouble(9, fsize);
           ps.setBlob(10, istr);
            if (ps.executeUpdate()==1)
            {
                response.sendRedirect("empview.jsp");
            }      } catch (ClassNotFoundException ex) {
            Logger.getLogger(update.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(update.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
}
