
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
       <h1>Tareas Pendientes</h1>
       <a href="agregarNuevaTarea.jsp" >Nuevo</a>
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
                <td> <%= t.getId()%> </td>
                <td> <%= t.getTarea()%> </td>
                <%
                    
                    if (t.isCompleatado()) {
                        out.print("<td><input type='checkbox' checked></td>");
                    } else {
                        out.print("<td><input type='checkbox'></td>");
                    }
                %>
                <td><a href="MainServlet?op=eliminar&id=<%= t.getId()%>" >Eliminar</a></td>
            </tr>

            <%      }
                }
            %>

        </table>
    </body>
</html>
