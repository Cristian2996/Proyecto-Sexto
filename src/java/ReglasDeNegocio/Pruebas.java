/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ReglasDeNegocio;

import AccesoADatos.*;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Usuario
 */
public class Pruebas {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
//        ArrayList<Producto> lista= new ArrayList<Producto>();
//         lista=Producto.productos_buscarporid(2);
//         if (lista.size()!=0)
//          {
//               for(Producto rec: lista)
//                {
//
//                         System.out.println(rec.getNombreproducto());
//                }
//             }
//            else
//                {
//                System.out.println("No hay registro");
//                }
//
//   Insertar
//        Producto obj = new Producto();
//        obj.setNombreproducto("Cable USB");
//
//        Producto.producto_insertar(obj);
// Editar
//        Producto obj = new Producto();
//        obj.setNombreproducto("Cable UTP");
//        obj.setProductoid(6);
//        Producto.producto_editar(obj);
//
//  Eliminar
    Producto.producto_eliminar(6);


    }

}
