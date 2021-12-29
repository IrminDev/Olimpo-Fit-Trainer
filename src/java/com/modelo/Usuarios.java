/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

/**
 *
 * @author danielasosa
 */
public class Usuarios {
    
 private String nombre, apellido, correo;
 private int tipoUsuario;

  public Usuarios(String nombre, String apellido, int tipoUsuario, String correo) {
        this.nombre = nombre;
        this.tipoUsuario = tipoUsuario;
        this.apellido = apellido;
        this.correo = correo;
    }

   
  
    public String getcorreo() {
        return correo;
    }

    public void setcorreo() {
        this.correo = correo;
    }
    
    public int gettipoUsuario() {
        return tipoUsuario;
    }

    public void settipoUsuario(int tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public String getnombre() {
        return nombre;
    }

    public void setnombre(String nombre) {
        this.nombre = nombre;
    }

    public String getapellido() {
        return apellido;
    }

    public void setapellido(String apellido) {
        this.apellido = apellido;
    }

}
