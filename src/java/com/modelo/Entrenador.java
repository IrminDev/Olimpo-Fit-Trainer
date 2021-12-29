/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

import Control.Conexion;
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
public class Entrenador {
    Connection conexion;
    
    public Entrenador(){
        Conexion con = new Conexion();
        try{
            conexion = con.getConexion();
        }
        catch(Exception ex){
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 
    
    public List<Clientes> ListaClientes(){
        PreparedStatement ps;
        ResultSet rs;
        List<Clientes> lista= new ArrayList<>(); 
        
        try{
            
            ps=conexion.prepareStatement("SELECT usuario.id, usuario.nombre, usuario.apellido,usuario.peso, usuario.estatura, usuario.correo, usuario.peso, usuario.estatura, usuarios_tipo.tipo from usuario inner join usuarios_tipo on usuario.tipo = usuarios_tipo.id where usuario.tipo = 2 or usuario.tipo = 3;");
         
         
           
            rs= ps.executeQuery();
            
            while(rs.next()){
                   
                    String nombre = rs.getString("nombre");
                    String tipoUsuario = rs.getString("tipo");
                    String apellido= rs.getString("apellido");
                    String correo = rs.getString("correo");
                    int peso= rs.getInt("peso");
                    int estatura= rs.getInt("estatura");
           Clientes cliente = new Clientes(nombre, apellido, tipoUsuario, correo, peso, estatura);
                    
                lista.add(cliente);
            }
            return lista;
            
        }catch(SQLException e){
            System.out.println(e.toString());
            return null;
                    }    
    } 
}
