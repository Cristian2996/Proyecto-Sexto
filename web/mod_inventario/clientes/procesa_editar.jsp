<%-- 
    Document   : procesa_editar
    Created on : 09-ene-2019, 17:32:03
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>
<!DOCTYPE html>
<%
    try {
            Cliente cliente=new Cliente();
            cliente.setCedula(request.getParameter("cedula"));
            cliente.setNombres(request.getParameter("nombres"));
            cliente.setApellidos(request.getParameter("apellidos"));
            cliente.setTelefono(request.getParameter("telefono"));
            cliente.setDireccion(request.getParameter("direccion"));
            cliente.setEmail(request.getParameter("email"));
            cliente.setId_cliente(Integer.valueOf(request.getParameter("codigo")));
           boolean result= Cliente.clientes_editar(cliente);
             if (result)
                out.println("<script>location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
