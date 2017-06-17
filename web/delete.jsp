<%-- 
    Document   : delete
    Created on : Jun 8, 2017, 1:44:13 PM
    Author     : Desi Rima Melany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    Connection con = null;
    String url = "jdbc:mysql://localhost:3306/";; String db = "bukutamu";
    String driver = "com.mysql.jdbc.Driver"; String s=null;
    String pass = ""; try{
    Class.forName(driver);
    con = DriverManager.getConnection(url+db,"root",pass);
        try{
            Statement st = con.createStatement(); String email=request.getParameter("d");
            int qhapus = st.executeUpdate("delete from t_tamu where email='"+email+"'");
            st = con.createStatement(); response.sendRedirect("view.jsp");
        }
        catch (SQLException ex){
            System.out.println("SQL statement is not executed!");
        }
    }
    catch(Exception e){ System.out.println(e);
    }
%>

