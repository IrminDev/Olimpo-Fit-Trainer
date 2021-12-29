package com.modelo;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Validar extends conexion{
    
   public String[] login(Usuario user) throws Exception{
       String[] data = new String[9];
       Statement stm;
       ResultSet rs;
       try{
           this.conectar();
           stm = this.getCon().createStatement();
           rs = stm.executeQuery("SELECT * FROM usuario WHERE correo = '"+user.getCorreo()+"' AND contrasena = '"+user.getContrasena()+"';");
           if(rs.next()){
               data[0] = "true";
               data[1] = rs.getString("nombre");
               data[2] = rs.getString("apellido");
               data[3] = String.valueOf(rs.getInt("peso"));
               data[4] = String.valueOf(rs.getInt("estatura"));
               data[5] = rs.getString("correo");
               data[6] = rs.getString("contrasena");
               data[7] = String.valueOf(rs.getInt("tipo"));
               data[8] = String.valueOf(rs.getInt("id"));
           }
       }
       catch(Exception e){
           throw e;
       }
       
       return data;
   }
   public String[] register(Usuario user) throws Exception{
       String estado[] = new String[2];
       Statement stm;
       ResultSet rs;
       try{
           this.conectar();
           stm = this.getCon().createStatement();
           rs = stm.executeQuery("SELECT * FROM usuario WHERE correo = '"+user.getCorreo()+"';");
           if(!rs.next()){
               stm.executeUpdate("INSERT INTO usuario VALUES(default, '"+user.getNombre()+"', '"+user.getApellido()+"', "+user.getPeso()+", "+user.getEstatura()+", '"+user.getCorreo()+"', '"+user.getContrasena()+"', 2);");
               rs = stm.executeQuery("SELECT * FROM usuario WHERE correo = '"+user.getCorreo()+"' ");
               if(rs.next()){
                   estado[1] = String.valueOf(rs.getInt("id"));
               }
           }
           else{
               estado[0] = "registrado";
           }
       }
       catch(Exception e){
           throw e;
       }
       
       return estado;
   }
   
   public String cambio(Usuario user, String contra) throws Exception{
        Statement stm;
        ResultSet rs;
        String estado = "";
        
        try{
            this.conectar();
            stm = this.getCon().createStatement();
            rs = stm.executeQuery("SELECT * FROM usuario WHERE contrasena = '"+contra+"' AND id = "+String.valueOf(user.getId())+";");
            if(rs.next()){
                stm.executeUpdate("UPDATE usuario SET nombre = '"+user.getNombre()+"', apellido = '"+user.getApellido()+"', peso = "+String.valueOf(user.getPeso())+", estatura = "+String.valueOf(user.getEstatura())+", correo = '"+user.getCorreo()+"', contrasena = '"+user.getContrasena()+"' WHERE id = "+user.getId()+";");
            }
            else{
                estado = "false";
            }
        }
        catch(Exception e){
            throw e;
        }
        
        return estado;
   }
   
   public String borrar(Usuario user, String contra) throws Exception{
       String estado = "";
       Statement stm;
       ResultSet rs;
       
       try{
           this.conectar();
           stm = this.getCon().createStatement();
           rs = stm.executeQuery("SELECT * FROM usuario WHERE contrasena = '"+contra+"' AND id = "+String.valueOf(user.getId())+";");
           if(rs.next()){
               stm.executeUpdate("DELETE FROM usuario WHERE contrasena = '"+contra+"' AND id = "+String.valueOf(user.getId())+";");
           }
           else{
               estado = "false";
           }
       }
       catch(Exception e){
           throw e;
       }
       
       return estado;
   }
   public void altaPlay(Playlist play) throws Exception{
       Statement stm;
       
       try{
           this.conectar();
           stm = this.getCon().createStatement();
           stm.executeUpdate("INSERT INTO playlist VALUES(default, '"+play.getTitulo()+"', '"+play.getDescripcion()+"', '"+play.getUrl()+"', "+play.getPlataforma()+");");
       }
       catch(Exception e){
           throw e;
       }
   }
   
   public void altaPub(Publicacion pu) throws Exception{
       Statement stm;
       
       try{
           this.conectar();
           stm = this.getCon().createStatement();
           stm.executeUpdate("INSERT INTO publicacion VALUES(default, '"+pu.getTitulo()+"', '"+pu.getDescripcion()+"');");
       }
       catch(Exception e){
           throw e;
       }
   }
   
   public List listar() throws Exception{
       PreparedStatement ps;
       ResultSet rs;
       
       ArrayList<Publicacion>lista = new ArrayList<>();
       try{
           this.conectar();
           ps = this.getCon().prepareStatement("SELECT * FROM publicacion;");
           rs = ps.executeQuery();
           while(rs.next()){
               Publicacion pub = new Publicacion();
               pub.setTitulo(rs.getString("titulo"));
               pub.setDescripcion(rs.getString("descripcion"));
               
               lista.add(pub);
           }
       }
       catch(Exception e){
           throw e;
       }
       
       return lista;
   }
   
   public List listarPlay() throws Exception{
       PreparedStatement ps;
       ResultSet rs;
       
       ArrayList<Playlist>lista = new ArrayList<>();
       
       try{
           this.conectar();
           ps = this.getCon().prepareStatement("SELECT * FROM playlist;");
           rs = ps.executeQuery();
           while(rs.next()){
               Playlist playlist = new Playlist();
               playlist.setId(rs.getInt("id"));
               playlist.setTitulo(rs.getString("nombre"));
               playlist.setDescripcion(rs.getString("descripcion"));
               playlist.setUrl(rs.getString("url"));
               playlist.setPlataforma(rs.getInt("plataforma"));
               
               lista.add(playlist);
           }
       }
       catch(Exception e){
           throw e;
       }
       return lista;
   }
   
   public List listarRutina() throws Exception{
       ArrayList<Rutina>lista = new ArrayList<>();
       PreparedStatement ps;
       ResultSet rs;
       try{
           this.conectar();
           ps = this.getCon().prepareStatement("SELECT * FROM rutina");
           rs = ps.executeQuery();
           while(rs.next()){
               Rutina rutina = new Rutina();
               rutina.setId(rs.getInt("id"));
               rutina.setNombre(rs.getString("nombre"));
               rutina.setDescripcion(rs.getString("descripcion"));
               
               lista.add(rutina);
           }
       }
       catch(Exception e){
           throw e;
       }
       
       return lista;
   }
   
   public List Rutina_ejercicios(int id) throws Exception{
       ArrayList<Ejercicio>lista = new ArrayList<>();
       PreparedStatement ps;
       ResultSet rs;
       
       try{
           this.conectar();
           ps = this.getCon().prepareStatement("Select ejercicio.titulo, ejercicio.descripcion from ejercicio, rutina, rutina_ejercicio where ejercicio.id=rutina_ejercicio.ejercicio and rutina.id=rutina_ejercicio.rutina and rutina.id="+id+";");
           rs= ps.executeQuery();
           while(rs.next()){
           Ejercicio exer =new Ejercicio();
           exer.setTitulo(rs.getString("titulo"));
           exer.setDescripcion(rs.getString("descripcion"));
           
           lista.add(exer);
           }
       }
       catch(Exception e){
           throw e;
       }
       return lista;
   }
}
