<%-- 
    Document   : index
    Created on : 31/10/2017, 07:35:52 AM
    Author     : juliana
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Persistencia.BDHoja"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOJA DE VIDA</title>
    </head>
    <body>
        <h1>DATOS INGRESADOS</h1>
         <%
            BDHoja gestorHoja = BDHoja.getHojita();
            ResultSet conjuntoRegistros = gestorHoja.obtenerRegistros();
            boolean apuntador = conjuntoRegistros.next();
            if (!apuntador) {
                out.println("<h2>No hay registros</h2>");
            } else {
                %>
                
                <table>
                    <tr>
                        <td>NOMBRES</td>
                        <td>APELLIDOS</td>
                        <td>DOCUMENTO</td>
                        <td>TELÉFONO</td>
                    </tr>
                    
                      <%
                        while(apuntador) {
                            out.println("<tr>");
                            out.println("<td>" + conjuntoRegistros.getString("NOMBRES") + "</td>");
                            out.println("<td>" + conjuntoRegistros.getString("APELLIDOS") + "</td>");
                            out.println("<td>" + conjuntoRegistros.getString("DOCUMENTO") + "</td>");
                            out.println("<td>" + conjuntoRegistros.getString("TELEFONO") + "</td>");
                            out.println("</tr>");
                            apuntador = conjuntoRegistros.next();
                        }
                    %>
                    <%
                        while(apuntador) {
                            out.println("<tr>");
                            out.println("<td>" + conjuntoRegistros.getString("NOMBRES") + "</td>");
                            out.println("<td>" + conjuntoRegistros.getString("APELLIDOS") + "</td>");
                            out.println("<td>" + conjuntoRegistros.getString("DOCUMENTO") + "</td>");
                            out.println("<td>" + conjuntoRegistros.getString("TELEFONO") + "</td>");
                            out.println("</tr>");
                            apuntador = conjuntoRegistros.next();
                        }
                    %>
                </table>
                <%
            }
        %>
        <input type="button" onclick="document.location.reload();" value="Actualizar Tabla">
        <a href="insertar.jsp">Insertar nueva persona</a>

    </body>
</html>
