
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.Tarea"%>
<%
    if (session.getAttribute("tarea") == null) {
        ArrayList<Tarea> tar = new ArrayList<Tarea>();
        session.setAttribute("tarea", tar);
    }
    ArrayList<Tarea> tare = (ArrayList<Tarea>) session.getAttribute("tarea");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registrar nueva Tarea</h1>
        <form action="MainServlet"  method="post">
            <table>
                <tr>
                    <td>Id: </td>
                    <td><input type="number" name="id" ></td>
                </tr>
                <tr>
                    <td>Tarea: </td>
                    <td><input type="text" name="tarea" ></td>
                </tr>
                <input type="text" name="completado" value="false" hidden>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Procesar" ></td>
                </tr>
            </table>
        </form>

        <h1>Tareas Pendientes</h1>
        <br>
        <br>
        <table border="1" cellspacing="0">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Completado</th>
                <th></th>
            </tr>

            <%
                if (tare != null) {
                    for (Tarea t : tare) {


            %>

            <tr>
                <td> <%= t.getId() %> </td>
                <td> <%= t.getTarea() %> </td>
                <td><input type='checkbox'></td>
                <td><a href="MainServlet?op=eliminar&id=<%= t.getId()%>" >Eliminar</a></td>
            </tr>

            <%      }
                }
            %>

        </table>
    </body>
</html>
