<%-- 
    Document   : addinsert
    Created on : Jun 8, 2017, 1:31:35 PM
    Author     : Desi Rima Melany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guest Book</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <a href="index.jsp">Halaman Awal</a>
        <a href="add.jsp">Kembali</a>
    </head>
    <body>
        <%
            if ((request.getParameter("f_email") != null )
                && (request.getParameter("f_nama") != null )
                && (request.getParameter("f_komentar") != null )
                )
                    {
                        Connection conn = null; 
                        Statement st = null;
                    try
                        {
                            Class.forName("org.gjt.mm.mysql.Driver").newInstance();
                            DriverManager.getConnection("jdbc:mysql://localhost:3306/bukutamu", "root", "");
                            st = conn.createStatement(); 
                            st.executeUpdate("insert into t_tamu (email, nama_lengkap, komentar) VALUES ('" + request.getParameter("f_email") + "','" + request.getParameter("f_nama") + "','" + request.getParameter("f_komentar") +"')");
        %> 
        Proses Simpan Berhasil.	
        <%
                        } catch (Exception e)
                            {
                                %> Ada Kesalahan.	
                                <% e.printStackTrace();
                                %>	
                                <%
                            }
                    }
                                %>
    </body>
</html>


