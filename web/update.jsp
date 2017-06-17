<%-- 
    Document   : update
    Created on : Jun 8, 2017, 1:43:46 PM
    Author     : Desi Rima Melany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    Connection con = null;
    String url = "jdbc:mysql://localhost:3306/"; String db = "bukutamu";
    String driver = "com.mysql.jdbc.Driver"; String s=null;
    String pass = ""; try{
    Class.forName(driver);
    con = DriverManager.getConnection(url+db,"root",pass); try{
        Statement st = con.createStatement();
        String email=request.getParameter("f_email"); String nama=request.getParameter("f_nama");
        String komentar=request.getParameter("f_komentar"); int qedit = st.executeUpdate("update t_tamu set nama_lengkap='"+nama+"',komentar='"+komentar+"' where email='"+email+"'");
        st = con.createStatement(); response.sendRedirect("view.jsp");
    }
    catch (SQLException ex){
        System.out.println("SQL statement is not executed!");
    }
    }
    catch(Exception e){ System.out.println(e);
    }
%>
 

