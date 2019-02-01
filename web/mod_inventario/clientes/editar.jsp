<%-- 
    Document   : listar_productos
    Created on : ene 6, 2019, 6:12:39 p.m.
    Author     : Cristian
--%>

<%@page import="ReglasDeNegocio.Cliente"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    Cliente cliente = new Cliente();
%>
<%
    try {

        int codigo = Integer.parseInt(request.getParameter("codigo"));
        //  out.print("<script>alert("+codigo+");</script>");
        cliente = Cliente.clientes_buscarporid(codigo);

    } catch (Exception e) {
    }


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>

    <body>



        <form method="POST" action="procesa_editar.jsp">
            <input type="hidden" id="codigo" name="codigo" value="<%=cliente.getId_cliente()%>">
            <input type="text" required class="form-control" placeholder="Cedula Cliente" id="nombres" value="<%=cliente.getCedula()%>" name="cedula"/>
            <input type="text" required class="form-control" placeholder="Nombre Cliente" id="nombres" value="<%=cliente.getNombres()%>" name="nombres"/>
            <input type="text" required class="form-control" placeholder="Apellido Cliente" id="apellidos" value="<%=cliente.getApellidos()%>" name="apellidos"/>
            <input type="text" required class="form-control" placeholder="Telefono Cliente" id="telefono" value="<%=cliente.getTelefono()%>" name="telefono"/>
            <input type="text" required class="form-control" placeholder="Direccion Cliente" id="Direccion" value="<%=cliente.getDireccion()%>" name="direccion"/>
            <input type="text" required class="form-control" placeholder="Email Cliente" id="email" value="<%=cliente.getEmail()%>" name="email"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>


    </body>

</html>
