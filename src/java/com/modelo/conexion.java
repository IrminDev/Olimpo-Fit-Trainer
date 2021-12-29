package com.modelo;

import java.sql.*;

public class conexion {
    private Connection con;

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }
    
    public void conectar() throws Exception{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/olimpo?useSSL=false&zeroDateTimeBehavior=convertToNull&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","n0m3l0");

        }
        catch(ClassNotFoundException | SQLException e){
            throw e;
        }
    }
    
    public void desconectar() throws Exception{
        try{
            if(con != null){
                if(con.isClosed() == false){
                    con.isClosed();
                }
            }
        }
        catch(SQLException e){
            throw e;
        }
    }
}

