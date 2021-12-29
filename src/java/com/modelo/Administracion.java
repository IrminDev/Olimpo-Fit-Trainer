/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

import Control.Conexion;
import com.modelo.Usuarios;
import com.modelo.UsuariosTip;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author danielasosa
 */
public class Administracion {
   Connection conexion;
    
    public Administracion(){
        Conexion con = new Conexion();
        try{
            conexion = con.getConexion();
        }
        catch(Exception ex){
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 
    
    public List<UsuariosTip> ListaUsuarios(){
        PreparedStatement ps;
        ResultSet rs;
        List<UsuariosTip> lista= new ArrayList<>(); 
        
        try{
            
            ps=conexion.prepareStatement("select usuario.nombre, usuario.apellido, usuario.correo, usuarios_tipo.tipo from usuario inner join usuarios_tipo on usuario.tipo = usuarios_tipo.id;");
          
            rs= ps.executeQuery();
            
            while(rs.next()){
                
                    String nombre = rs.getString("nombre");
                    String tipoUsuario = rs.getString("tipo");
                    String apellido= rs.getString("apellido");
                    String correo = rs.getString("correo");
                    
                UsuariosTip usuarios = new UsuariosTip(nombre, apellido, tipoUsuario, correo);
                    
                lista.add(usuarios);
            }
            return lista;
            
        }catch(SQLException e){
            System.out.println(e.toString());
            return null;
                    }    
    }
     
    public Usuarios mostrarAdmin() {


        
        PreparedStatement ps;
        ResultSet rs;
        Usuarios usuario = null; 
        
        try{
            
            ps=conexion.prepareStatement("select nombre, apellido, correo, tipo from usuario where tipo=2;");
           
            rs= ps.executeQuery();
            
            while(rs.next()){
                    String nombre = rs.getString("nombre");
                    int tipoUsuario = rs.getInt("tipo");
                    String apellido= rs.getString("apellido");
                    String correo= rs.getString("correo");
                    
                    
             usuario = new Usuarios(nombre, apellido, tipoUsuario, correo);
                    
                   
            }
            return usuario;
            
        }catch(SQLException e){
            System.out.println(e.toString());
            return null;
            
        }
    }
    
    public boolean actualizar(Usuarios usuarios){
        
        PreparedStatement ps;
        
        
        try{
            
            ps=conexion.prepareStatement("update usuario set tipo=? where correo=? and nombre=? and apellido=?;");
            ps.setInt(1, usuarios.gettipoUsuario());
            ps.setString(2, usuarios.getcorreo());
            ps.setString(3, usuarios.getnombre());
            ps.setString(4, usuarios.getapellido());
            ps.execute();
            
          
            return true;
            
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
            
        }
    }
    
     public boolean eliminar(String _nombre, String _apellido, String _correo){
        
        PreparedStatement ps;
        
        
        try{
            
            ps=conexion.prepareStatement("delete from usuario where nombre=? and apellido=? and correo=?;");
            ps.setString(1, _nombre);
            ps.setString(2, _apellido);
            ps.setString(3, _correo);
            
            ps.execute();
            
            return true;
            
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
            
        }
    }
    
}
