
package com.modelo;

import java.sql.*;

/**
 *
 * @author danielasosa
 */
public class Contador extends conexion{
    
    
    public String[] contadores() throws Exception{
       String data[] = new String[3];
       Statement stm;
       ResultSet rs;

        try{
            this.conectar();
            stm = this.getCon().createStatement();
            rs = stm.executeQuery("SELECT count(*) FROM usuario WHERE tipo = 2");

            if(rs.next()){
              data[0] = String.valueOf(rs.getInt(1));
            }
            else{
             data[0] = null;

            }
                stm = this.getCon().createStatement();
                 rs = stm.executeQuery("SELECT count(*) FROM usuario WHERE tipo = 3");


                 if(rs.next()){
                   data[1] = String.valueOf(rs.getInt(1));
                 }
                 else{
                  data[1] = null;
                 }
                        stm = this.getCon().createStatement();
                        rs = stm.executeQuery("SELECT count(*) FROM usuario");

                        if(rs.next()){
                          data[2] = String.valueOf(rs.getInt(1));
                        }
                        else{
                         data[2] = null;
                        }

                        }
     
        catch(Exception e){
         throw e;
        }
        return data;
        }
   
}
