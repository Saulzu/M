<%-- 
    Document   : rolList
    Created on : May 2, 2023, 6:09:56 PM
    Author     : gerdoc
--%>

<%@page import="org.gerdoc.dao.Rol"%>
<%@page import="java.util.List"%>
<%@page import="org.gerdoc.dao.service.RolService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="bootstrap.jsp"/>
        <title>Rol</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-2">
                    <br>
                    <a href="index.jsp"><button type="button" class="btn btn-outline-success shadow-lg"><span class="display-6"><i class="bi bi-house-door"></i></span></button></a>
                </div>
                <div class="col-sm-8">
                    <br><br><br>
                    <div class="card text-center shadow">
                        <div class="card-body">
                            <table  border="5" class="table table-dark table-striped-columns">
                                <tr>
                                    <td>Rol</td>
                                    <td>Descripción</td>
                                </tr>
                                <%
                                    RolService rolService = new RolService();
                                    List<Rol> list = rolService.getRolList();

                                    if(list != null && list.size() > 0){
                                        for(Rol rol : list)
                                        {
                                %>
                                <tr>
                                    <td><%=rol.getRol() %></td>
                                    <td><%=rol.getDescripcion() %></td>
                                </tr>
                                <%
                                        }   
                                    }
                                 %>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2"></div>
            </div>
        </div>
    </body>
</html>