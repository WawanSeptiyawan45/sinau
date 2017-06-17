<%-- 
    Document   : edit
    Created on : Jun 8, 2017, 1:40:15 PM
    Author     : Desi Rima Melany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Komentar Tamu</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <a href="index.jsp"><< Halaman Awal</a>
    </head>
    
    <body>
        <center>
        <h1>EDIT KOMENTAR PENGGUNA</h1>
        <form action="update.jsp">
            <%
                Connection con = null;
                String url = "jdbc:mysql://localhost:3306/"; String db = "bukutamu";
                String driver = "com.mysql.jdbc.Driver"; String pass = "";
                int sumcount=0;
                String email=request.getParameter("u"); Statement st;
                try{
                    Class.forName(driver).newInstance(); con =
                    DriverManager.getConnection(url+db,"root",pass);
                    String query = "select * from t_tamu where email='"+email+"'";
            %>
            <%
                st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                while(rs.next()){
            %>
        <h2>UBAH ISI FORM DIBAWAH INI</h2>
        <table>
            <tr>
                <td>E-MAIL</td>
                <td>:</td>
                <td><input name="f_email" type="text" size="40" value="<%=rs.getString("email")%>" readonly></td>
            </tr>
            <tr>
                <td>NAMA LENGKAP</td>
                <td>:</td>
                <td><input name="f_nama" type="text" size="25" value="<%=rs.getString("nama_lengkap")%>"></td>
            </tr>
            <tr>
                <td>KOMENTAR</td>
                <td>:</td>
                <td><textarea name="f_komentar" rows="6" width="200"><%=rs.getString("komentar")%></textarea></td>
            </tr>
                <td><input type="submit" value="Update"></input></td>
            <%
            }   
            %>
            <%
                }
                    catch(Exception e){ e.printStackTrace();
                    }
            %>
        </table>
        </form>
        </center>
    </body>
</html>
