/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.modelo.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javafx.scene.control.Alert;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author danielasosa
 */
public class ControlAD extends HttpServlet {
 
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Administracion admin = new Administracion();
        String accion;
        RequestDispatcher dispatcher=null;
        
        accion = request.getParameter("accion");
          if(accion == null || accion.isEmpty()){
         
          dispatcher = request.getRequestDispatcher("Admin/AdminIndex.jsp");
       
        }else
             if("Usuario".equals(accion)){
                 
            HttpSession objSesion = request.getSession();
            
            dispatcher = request.getRequestDispatcher("admin/CBM/USERS.jsp");
          
            List<UsuariosTip>listaUsuarios = admin.ListaUsuarios();
            request.setAttribute("lista", listaUsuarios);
           
         
        }else if("cambiar".equals(accion)){
            
            String nombre = request.getParameter("nombreviejo");
            String apellido = request.getParameter("apellido");
            String correo = request.getParameter("correo");
            int tipo = Integer.parseInt(request.getParameter("tipo"));
            
            Usuarios usuarios = new Usuarios(nombre, apellido, tipo, correo);
            admin.actualizar(usuarios);
            
           
            dispatcher = request.getRequestDispatcher("admin/CBM/USERS.jsp");
            List<UsuariosTip>listaUsuarios = admin.ListaUsuarios();
            request.setAttribute("lista", listaUsuarios);
           
           
        }else if("baja".equals(accion)){
            
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String correo = request.getParameter("correo");
            
            admin.eliminar(nombre, apellido, correo);
         
            dispatcher = request.getRequestDispatcher("admin/CBM/USERS.jsp");
            List<UsuariosTip>listaUsuarios = admin.ListaUsuarios();
            request.setAttribute("lista", listaUsuarios);
            
        } 
          
        dispatcher.forward(request, response);
    
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}
