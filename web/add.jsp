<%-- 
    Document   : add
    Created on : Jun 8, 2017, 1:30:07 PM
    Author     : Desi Rima Melany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menambah Komentar</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <a href="index.jsp"><< Halaman Awal</a>
        <a href="view.jsp"><< Lihat Buku Tamu</a>
    </head>
    
    <body>
        <center>
        <h1>MENAMBAH KOMENTAR PENGGUNA</h1>
        <form action="addinsert.jsp">
        <h2>ISI FORM DIBAWAH INI</h2>
        <table>
            <tr>
                <td>E-MAIL</td>
                <td>:</td>
                <td><input name="f_email" type="text" size="40"></td>
            </tr>
            <tr>
                <td>NAMA LENGKAP</td>
                <td>:</td>
                <td><input name="f_nama" type="text" size="25"></td>
            </tr>
            <tr>
                <td>KOMENTAR</td>
                <td>:</td>
                <td><textarea name="f_komentar" rows="6" width="200"></textarea></td>
            </tr>
                <td><input type="submit" value="Simpan"></input></td>
        </table>
        </form>
        </center>
    </body>
    
</html>
