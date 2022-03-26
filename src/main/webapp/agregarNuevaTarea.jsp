
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
                <tr>
                    <td>Estado: </td>
                    <td>
                        <select name="estado">
                            <option value="si">Completado</option>
                            <option value="no" selected>No Completado</option>
                        </select>
                    </td>
                </tr>
                <input type="text" name="completado" value="false" hidden>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Procesar" ></td>
                </tr>
            </table>
        </form>
    </body>
</html>
