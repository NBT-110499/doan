package vn.t3h.t3h_2202;

import javax.naming.InitialContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ChangePassword  extends HttpServlet {
    public ChangePassword() {
        super();
    }
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        String Email = request.getParameter("Email");
        String Password = request.getParameter("Password");
        String CPassword = request.getParameter("Password");

        Connection con =   GetConnectToDb();
        boolean flag = CheckLogin(Password,CPassword,Email,con);
        if(flag==true){
            gotoPage("/Login2.jsp",request,response);
        }
        else{
            gotoPage("/ChangeError.jsp",request,response);
        }
    }
    public void gotoPage(String address, HttpServletRequest request,
                         HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(address);
        dispatcher.forward(request, response);
    }
    public boolean CheckLogin(String Password, String CPassword,String Email, Connection con) {
        if (Password != null && CPassword != null && Email !=null) {
            try {
                PreparedStatement ps = con.prepareStatement("UPDATE PUBLIC.IAUSERS SET Password = ('"+Password+"') WHERE Email='"+Email+"'");
                ResultSet rs = ps.executeQuery();
                while(rs.next()) {
                    return true;
                }
            } catch (Exception e) {
            }
        }
        return false;
    }
    public Connection GetConnectToDb() {

        try {
            InitialContext ctx = new InitialContext();
            Connection con = null;
            DataSource ds = (DataSource) ctx.lookup("java:/DefaultDS");
            con = ds.getConnection();
            return con;
        } catch (Exception e) {
            return null;
        }
    }
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {

    }
}
