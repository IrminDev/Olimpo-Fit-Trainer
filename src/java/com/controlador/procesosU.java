package com.controlador;

import com.modelo.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "procesosU", urlPatterns = {"/procesosU"})
public class procesosU extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getParameter("BtnRegister") != null){
            Usuario user = new Usuario();
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String contrasena = request.getParameter("contrasign");
            String correo = request.getParameter("correosign");
            int peso = Integer.parseInt(request.getParameter("peso"));
            int estatura = Integer.parseInt(request.getParameter("estatura"));
            
            
            String estado[] = new String[2];
            
            user.setNombre(nombre);
            user.setApellido(apellido);
            user.setCorreo(correo);
            user.setContrasena(contrasena);
            user.setPeso(peso);
            user.setEstatura(estatura);
            
            Validar registro = new Validar();
            HttpSession objSesion = request.getSession();
            HttpSession objError = request.getSession();
            
            try{
                estado = registro.register(user);
                if("registrado".equals(estado[0])){
                    response.sendRedirect("validacion/Identificate.jsp");
                }
                else{
                    objSesion.setAttribute("nombre", user.getNombre());
                    objSesion.setAttribute("apellido", user.getApellido());
                    objSesion.setAttribute("peso", user.getPeso());
                    objSesion.setAttribute("estatura", user.getEstatura());
                    objSesion.setAttribute("correo", user.getCorreo());
                    objSesion.setAttribute("contrasena", user.getContrasena());
                    objSesion.setAttribute("tipo", 2);
                    objSesion.setAttribute("id", estado[1]);
                    response.sendRedirect("user/indexU.jsp");
                }
            }
            catch(Exception e){
                objError.setAttribute("error", e);
                response.sendRedirect("error.jsp");
            }
        }
        else{
            if(request.getParameter("BtnLogin") != null){
                Usuario user = new Usuario();
                String correo = request.getParameter("correo");
                String contrasena = request.getParameter("contrasena");
                
                user.setCorreo(correo);
                user.setContrasena(contrasena);
                
                String data[] = new String[9];
                
                Validar inicio = new Validar();
                
                HttpSession objSesion = request.getSession();
                
                try{
                    data = inicio.login(user);
                    if("true".equals(data[0])){
                        objSesion.setAttribute("nombre", data[1]);
                        objSesion.setAttribute("apellido", data[2]);
                        objSesion.setAttribute("peso", data[3]);
                        objSesion.setAttribute("estatura", data[4]);
                        objSesion.setAttribute("correo", data[5]);
                        objSesion.setAttribute("contrasena", data[6]);
                        objSesion.setAttribute("tipo", data[7]);
                        objSesion.setAttribute("id", data[8]);
                        if("2".equals(data[7])){
                            response.sendRedirect("user/indexU.jsp");
                        }
                        else
                            if("1".equals(data [7])){
                                response.sendRedirect("admin/IndexAd.jsp");
                            }else
                        if("3".equals(data [7])){
                                response.sendRedirect("coach/IndexCoa.jsp");
                    }
                    else{
                        response.sendRedirect("validacion/Identificate.jsp");
                    }
                }
                }catch(Exception e){
                    
                }
            }
            else{
                if(request.getParameter("BtnCambiar") != null){
                    Usuario user = new Usuario();
                    String nombre = request.getParameter("nombre");
                    String apellido = request.getParameter("apellido");
                    String contrasenanew = request.getParameter("contrasenanew");
                    String correo = request.getParameter("correo");
                    int peso = Integer.parseInt(request.getParameter("peso"));
                    int estatura = Integer.parseInt(request.getParameter("estatura"));
                    int id = Integer.parseInt(request.getParameter("id"));
                    int tipo = Integer.parseInt(request.getParameter("tipo"));
                    
                    String contra = request.getParameter("contrasena");
                    String estado;
                    
                    user.setNombre(nombre);
                    user.setApellido(apellido);
                    user.setCorreo(correo);
                    user.setContrasena(contrasenanew);
                    user.setPeso(peso);
                    user.setEstatura(estatura);
                    user.setId(id);
                    user.setTipoUsuario(tipo);
                    
                    Validar cambio = new Validar();
                    
                    HttpSession objSesion = request.getSession();
                    
                    try{
                        estado = cambio.cambio(user, contra);
                        
                        if("false".equals(estado)){
                            response.sendRedirect("user/profile/perfil.jsp");
                        }
                        else{
                            objSesion.setAttribute("nombre", nombre);
                            objSesion.setAttribute("apellido", apellido);
                            objSesion.setAttribute("peso", peso);
                            objSesion.setAttribute("estatura", estatura);
                            objSesion.setAttribute("correo", correo);
                            objSesion.setAttribute("id", id);
                            objSesion.setAttribute("tipo", tipo);
                            objSesion.setAttribute("contrasena", contrasenanew);
                            if ("2". equals(tipo)){
                            response.sendRedirect("user/profile/perfil.jsp");
                            }
                            else
                                if("3".equals(tipo)){
                                  response.sendRedirect("coach/profileCoa/perfil.jsp");  
                                }else
                                    if("1".equals(tipo)){
                                        response.sendRedirect("admin/profileAdmin/perfil.jsp");
                                    }else{
                                        response.sendRedirect("user/profile/perfil.jsp");
                                    }
                        }
                    }
                    catch(Exception e){
                       
                    }
                }
                else{
                    if(request.getParameter("BtnEliminar") != null){
                        Usuario user = new Usuario();
                        String contrasena = request.getParameter("contrasena");
                        int id = Integer.parseInt(request.getParameter("id"));
                        
                        user.setId(id);
                        
                        String estado;
                        
                        Validar baja = new Validar();
                        HttpSession objError = request.getSession();
                        
                        try{
                            estado = baja.borrar(user, contrasena);
                            
                            if("false".equals(estado)){
                                response.sendRedirect("user/profile/update/delete.jsp");
                            }
                            else{
                                response.sendRedirect("user/profile/update/SeeYou.jsp");
                            }
                        }
                        catch(Exception e){
                            objError.setAttribute("error", e);
                            response.sendRedirect("error.jsp");
                        }
                    }
                    else{
                        if(request.getParameter("BtnSubirPlay") != null){
                            Playlist play = new Playlist();
                            
                            String titulo = request.getParameter("titulo");
                            String descripcion = request.getParameter("descripcion");
                            String url = request.getParameter("url");
                            int plataforma = Integer.parseInt(request.getParameter("plataforma"));
                            
                            play.setTitulo(titulo);
                            play.setDescripcion(descripcion);
                            play.setUrl(url);
                            play.setPlataforma(plataforma);
                            
                            Validar altaPlay = new Validar();
                            HttpSession objError = request.getSession();
                            
                            try{
                                altaPlay.altaPlay(play);
                                response.sendRedirect("admin/crearPlay.jsp");
                            }
                            catch(Exception e){
                                objError.setAttribute("error", e);
                                response.sendRedirect("error.jsp");
                            }
                        }else{
                           if(request.getParameter("BtnSubirPub") != null){
                            Publicacion pu = new Publicacion();
                            
                            String titulo = request.getParameter("titulo");
                            String descripcion = request.getParameter("descripcion");
                     
                            
                            pu.setTitulo(titulo);
                            pu.setDescripcion(descripcion);
                            
                            
                            Validar altaPub = new Validar();
                            HttpSession objError = request.getSession();
                            
                            try{
                                altaPub.altaPub(pu);
                                response.sendRedirect("coach/CP/publicaciones.jsp");
                            }
                            catch(Exception e){
                                objError.setAttribute("error", e);
                                response.sendRedirect("error.jsp");
                            }
                           }
                           else{
                           	if(request.getParameter("rutina") !=null){
                                String id=request.getParameter("rutina");
                                Validar ejercicios = new Validar();
                                HttpSession objSesion = request.getSession();
                            
                                try{
                                    ejercicios.Rutina_ejercicios(Integer.parseInt(id));
                                    objSesion.setAttribute("idR", id);
                                    response.sendRedirect("user/Rutinas/Rutinas/Rutina.jsp");
                                }
                                catch(Exception e){
                                    objSesion.setAttribute("error", e);
                                    response.sendRedirect("error.jsp");
                                }                                    
                            }
                           }
                        }
                    }
                }
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String accion = request.getParameter("accion");
        if("listar".equals(accion)){
            acceso = "user/forum/foro.jsp";
        }
        else{
            if("playlists".equals(accion)){
                acceso = "user/Playlist/Playlist.jsp";
            }
            else{
                if("rutina".equals(accion)){
                    acceso = "user/Rutinas/rutinas.jsp";
                }
            }
        }
        
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
