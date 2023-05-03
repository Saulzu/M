<%-- 
    Document   : index
    Created on : 2 may 2023, 20:47:40
    Author     : zunig
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="bootstrap.jsp"/>
        <title>Inicio</title>
    </head>
    <style>
        a{text-decoration: none;}
    </style>
    <body>
        <br><br><br><br><br><br>
        <div class="container text-center">
            <div class="row align-items-start">
                <div class="col"></div>
                <div class="col">
        
                    <div class="card" style="width: 18rem;" >
                        <div class="card-body" align="center">
                            <a href="rolList.jsp"><button type="button" class="btn btn-outline-info btn-lg gap-2 col-6 mx-auto">Rol</button></a>
                            <br><br>
                            <a  href="usuarioList.jsp"><button type="button" class="btn btn-outline-info btn-lg gap-2 col-6 mx-auto">Usuarios</button></a>
                        </div>
                    </div>
                </div>
                <div class="col"></div>
            </div>
        </div>
    </body>
</html>
