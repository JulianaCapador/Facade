<%-- 
    Document   : insertarDatos
    Created on : 31/10/2017, 07:44:15 AM
    Author     : juliana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Diligencie los siguientes campos</h1>
        <form action="Fachada" method="post">
            <table border="1">
                <thead>
                    <tr>
                        <th>Rótulo</th>
                        <th>Campo</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Nombres:</td>
                        <td><input type="text" name="nombres" required=""></td>
                    </tr>
                    <tr>
                        <td>Apellidos:</td>
                        <td><input type="text" name="apellidos" required=""></td>
                    </tr>
                 
                        <td>Documento:</td>
                        <td><input type="text" name="documento" required=""></td>
                        
                        <td>Telefono:</td>
                        <td><input type="text" name="telefono" required=""></td>
                    </tr>
                </tbody>
            </table>
            <input type="submit">
        </form>
    </body>
</html>
