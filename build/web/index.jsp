<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : index
    Created on : 01-05-2021, 11:35:34 PM
    Author     : Carlos
--%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Tarea"%>
<%
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
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-10">
                    <h1 class="text-center">Listado de Tareas</h1>
                    <p><a class="btn btn-warning" href="MainController?op=nuevo&id=0">Nuevo</a></p> 

                    <table class="table table-primary table-striped">
                        <tr>
                            <th>Id</th>
                            <th>Tarea</th>
                            <th>Prioridad</th>
                            <th>Completado</th>
                            <th class="text-center" >Editar</th>
                            <th class="text-center" >Eliminar</th>
                        </tr> 
                        <tr>  
                            <c:forEach var="item" items="${lista}">
                                <td>${item.id}</td>
                                <td>${item.tarea}</td>
                                <c:if test="${item.prioridad == 1}" >
                                    <td class="text-red">Alta</td>
                                </c:if>

                                <c:if test="${item.prioridad == 2}" >
                                    <td>Media</td>
                                </c:if>

                                <c:if test="${item.prioridad == 3}" >
                                    <td>Baja</td>
                                </c:if>

                                <c:if test="${item.completado == 1}">

                                    <td>
                                        <input type="checkbox" id="vehicle3" name="vehicle3" value="Boat"checked>
                                    </td>
                                </c:if>
                                <c:if test="${item.completado == 2}">

                                    <td>
                                        <input type="checkbox" id="vehicle3" name="vehicle3" value="Boat">
                                    </td>
                                </c:if>

                                    <td><a class="btn btn-success" href="MainController?op=editar&id=${item.id}">Editar</a></td>
                                    <td><a class="btn btn-danger" href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('Esta seguro..?'))">Eliminar</a></td>
                            </tr>
                        </c:forEach>                  
                    </table>
                </div>    
            </div>    
        </div>



    </body>
</html>
