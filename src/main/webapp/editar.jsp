<%@page import="com.emergentes.modelo.Registro"%>
<% 
    Registro reg = (Registro)request.getAttribute("miobjper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <div>
        <div>
        <table border="1">
            <td>
                <p><b>PRIMER PARCIAL TEM-742</b><p>
                <p><b>Nombre:</b> Neustan Eliezer Choque Mamani<p>
                <p><b>Carnet:</b> 9947416 LP.<p>
            </td>
        </table>
        </div>
        <h1>REGISTRO DE NOTAS</h1>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= reg.getId() %>" size="2" readonly></td>
                </tr>
                <tr>
                    <td>Nombre :</td>
                    <td><input type="text" name="nombre" value="<%= reg.getNombre() %>"></td>
                </tr>
                <tr>
                    <td>Primer Parcial (Sobre 30 pts) :</td>
                    <td>
                        <input type="text" name="primero" value="<%= reg.getPrimero() %>">
                    </td>
                </tr>
                <tr>
                    <td>Segundo Parcial (Sobre 30 pts) :</td>
                    <td>
                        <input type="text" name="segundo" value="<%= reg.getSegundo() %>">
                    </td>
                </tr>
                <tr>
                    <td>Examen Final (Sobre 40 pts) :</td>
                    <td>
                        <input type="text" name="tercero" value="<%= reg.getTercero() %>">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>

        </form>
       </div>
    </center>
    </body>
</html>
