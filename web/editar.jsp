<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : editar
    Created on : 02-05-2021, 04:32:44 PM
    Author     : Carlos
--%>
<%@page import="com.emergentes.modelo.Tarea"%>
<%
    Tarea ta = (Tarea) request.getAttribute("ta");
    List<Tarea> lista = (List<Tarea>) request.getAttribute("lista");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

    </head>
    <body>

        <%            int id = Integer.parseInt(request.getParameter("id"));
            if (id != 0) {

        %>

        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-5">
                    <h1>Editar Tarea</h1>


                    <form action="MainController" method="post">
                        <table>

                            <c:forEach var="item" items="${lista}">
                                <tr> 
                                    <td>
                                        Id de Tarea 
                                    </td>
                                    <td>
                                        <input  type="number" name="id" value="${item.id}" readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Tarea</td>
                                    <td><input type="text" name="tarea" value="${item.tarea}"> </td>
                                </tr>
                                <tr>
                                    <td>Prioridad</td>
                                    <td>
                                        <select name="prioridad" id="">
                                            <option value="">--Seleccione la Prioridad--</option>
                                            <option value="1">1 - Alta</option>
                                            <option value="2">2 - Media</option>
                                            <option value="3">3 - Baja</option>   
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Completado</td>

                                    <td>
                                        <input type="checkbox" name="completado" value="1">
                                    </td>
                                    <td>Pendiente</td>
                                    <td>
                                        <input type="checkbox" name="completado" value="2">
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><input type="submit" value="Enviar"></td>
                                </tr>
                            </c:forEach>
                        </table>

                    </form>
                </div>
            </div>
        </div>
        <%        } else {
        %>    




        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-5">
                    <h1>Nueva Tarea</h1> 
                    <form action="MainController" method="post">
                        <fieldset >
                            <input type="hidden" name="id" value="${ta.id}">
                            <div class="mb-3">
                                <label for="tarea" class="form-label">TAREA</label>
                                <input type="text" id="tarea" name="tarea" value="${ta.tarea}" class="form-control" placeholder="TAREA">
                            </div>
                            <div class="mb-3">
                                <label for="prioridad" class="form-label">PRIORIDAD</label>
                                <select id="prioridad" class="form-select" name="prioridad">
                                    <option value="">--Seleccione la Prioridad--</option>
                                    <option value="1">Alta</option>
                                    <option value="2">Media</option>
                                    <option value="3">Baja</option> 
                                </select>
                            </div>

                            <div class="mb-3">                                
                                <input type="checkbox" name="completado" value="1">
                                <label class="form-label">COMPLETADO</label>
                            </div>
                            <div class="mb-3">                                
                                <input type="checkbox" name="pendiente" value="1">
                                <label class="form-label">PENDIENTE</label>
                            </div>

                            <input class="btn btn-info" type="submit" value="Enviar">
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>

        <%
            }
        %>

    </body>
</html>
