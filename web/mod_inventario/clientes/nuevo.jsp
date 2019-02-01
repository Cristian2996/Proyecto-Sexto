<%-- 
    Document   : nuevo_inventario
    Created on : ene 6, 2019, 5:40:22 p.m.
    Author     : Cristian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>


        <form method="POST"  action="procesa_nuevo.jsp">
            <input type="text" class="form-control" placeholder="Cedula Cliente" required id="cedula" name="cedula"/>
            <input type="text" class="form-control" placeholder="Nombre Cliente" required id="nombres" name="nombres"/>
            <input type="text" class="form-control" placeholder="Apellido Cliente" required id="apellidos" name="apellidos"/>
            <input type="text" class="form-control" placeholder="Telefono Cliente" required id="telefono" name="cliente"/>
            <input type="text" class="form-control" placeholder="Direccion Cliente" required id="direccion" name="direccion"/>          
            <input type="text" class="form-control" placeholder="Email Cliente" required id="email" name="email"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>

