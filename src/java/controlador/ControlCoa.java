/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.modelo.Administracion;
import com.modelo.Clientes;
import com.modelo.Entrenador;
import com.modelo.Usuarios;
import com.modelo.UsuariosTip;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author danielasosa
 */
public class ControlCoa extends HttpServlet {
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Entrenador coa = new Entrenador();
        String accion;
        RequestDispatcher dispatcher=null;
        
        accion = request.getParameter("accion");
          if(accion == null || accion.isEmpty()){
         
          dispatcher = request.getRequestDispatcher("Admin/AdminIndex.jsp");
       
        }else
             if("clientes".equals(accion)){
                 
            HttpSession objSesion = request.getSession();
            
            dispatcher = request.getRequestDispatcher("coach/CP/clientes.jsp");
            
            List<Clientes>listaClientes = coa.ListaClientes();
            request.setAttribute("lista", listaClientes);
           
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
