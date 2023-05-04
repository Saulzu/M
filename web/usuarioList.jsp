<%-- 
    Document   : usuarioList.jsp
    Created on : 2 may 2023, 20:35:48
    Author     : zunig
--%>
<%@page import="org.gerdoc.dao.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="org.gerdoc.dao.service.UsuarioService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="bootstrap.jsp"/>
        <title>Usuario</title>
    </head>
    <body>
       <div class="container-fluid">
            <div class="row">
                <div class="col-sm-1">
                    <br>
                    <a href="index.jsp"><button type="button" class="btn btn-outline-success shadow-lg"><span class="display-6"><i class="bi bi-house-door"></i></span></button></a>
                </div>
                <div class="col-sm-10">
                    <br><br><br>
                    <div class="card text-center shadow">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table border="5" class="table table-dark table-striped-columns">
                                    <tr>
                                        <td>Usuario</td>
                                        <td>Nombre</td>
                                        <td>Apellido Paterno</td>
                                        <td>Apellido Materno</td>
                                        <td>Edad</td>
                                        <td>Fecha</td>
                                    </tr>
                                    <%
                                        UsuarioService userService = new UsuarioService();
                                        List<Usuario> list = userService.getUsuarioList();

                                        if(list != null && list.size() > 0){
                                            for(Usuario user : list)
                                            {
                                    %>
                                    <tr>
                                        <td><%=user.getUsuario() %></td>
                                        <td><%=user.getNombre() %></td>
                                        <td><%=user.getApellido_paterno() %></td>
                                        <td><%=user.getApellido_materno()%></td>
                                        <td><%=user.getEdad()%></td>
                                        <td><%=user.getFecha()%></td>
                                    </tr>
                                    <%
                                            }   
                                        }
                                     %>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>
        </div>
    </body>
</html>
