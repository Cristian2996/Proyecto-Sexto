<%-- 
    Document   : procesa_nuevo
    Created on : 09-ene-2019, 16:33:03
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,ReglasDeNegocio.*"%>
<!DOCTYPE html>
<%
    //String prueba = request.getParameter("nombre_producto");
    //String prueba1 = request.getParameter("categoria_producto");

    //out.println(prueba);
    //out.println(prueba1);
    try {
            Cliente cliente=new Cliente();
            cliente.setCedula(request.getParameter("cedula"));
            cliente.setNombres(request.getParameter("nombres"));
            cliente.setApellidos(request.getParameter("apellidos"));
            cliente.setTelefono(request.getParameter("telefono"));
            cliente.setDireccion(request.getParameter("direccion"));
            cliente.setEmail(request.getParameter("email"));
           boolean result= Cliente.clientes_insertar(cliente);
              if (result)
                out.println("<script>location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }
%>
