<%-- 
    Document   : view
    Created on : Jun 8, 2017, 1:38:09 PM
    Author     : Desi Rima Melany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lihat Buku Tamu</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <a href="index.jsp"><< Halaman Awal</a>
        <a href="add.jsp"><< Isi Buku Tamu</a>
    </head>
    <body>
        <center>
        <h1>SIMPLE GUEST BOOK</h1>
            <%@page import="java.sql.*" %>
            <TABLE BORDER="1" width="75%">
                <TR>
                    <TH>E-Mail</TH>
                    <TH>NAMA LENGKAP</TH>
                    <TH>KOMENTAR</TH>
                    <TH>OPERASI</TH>
                </TR>
                    <%
                        Connection conn = null; Statement st = null; ResultSet rs = null;
                        try{
                            Class.forName("org.gjt.mm.mysql.Driver").newInstance();
                            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bukutamu", "root", "");
                            st = conn.createStatement();
                            rs = st.executeQuery("select * from t_tamu"); while(rs.next()) {
                    %>  
                <TR>
                    <TD><%= rs.getString("email")%></TD>
                    <TD><%= rs.getString("nama_lengkap")%></TD>
                    <TD><%= rs.getString("komentar")%></TD>
                    <TD><a href="edit.jsp?u=<%=rs.getString("email")%>" >EDIT</a> / <a href="delete.jsp?d=<%=rs.getString("email")%>" > HAPUS</a></TD>
                </TR>    <%	} %>
            </TABLE>
        <% }
            catch(Exception ex){ ex.printStackTrace();
        %>
            Ada kesalahan:
        <%
        }
        finally{
        if (rs != null) rs.close();
        if (st != null) st.close();
        if (conn != null) conn.close();
        }
        %>
        </center>
    </body>
</html>

