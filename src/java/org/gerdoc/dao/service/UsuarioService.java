/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.gerdoc.dao.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.gerdoc.dao.Usuario;
/**
 *
 * @author zunig
 */
public class UsuarioService extends Conexion<Usuario>{
    public List<Usuario> getUsuarioList(){
        
        List<Usuario> userList = null;
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        Usuario user = null;

        try 
        {
            connection = getConnection();
            if (connection == null) 
            {
                return null;
            }
            statement = connection.createStatement();
            if (statement == null) {
                return null;
            }
            resultSet = statement.executeQuery("SELECT * FROM USUARIO");
            if (resultSet == null) 
            {
                return null;
            }
            userList = new ArrayList<>();
            while (resultSet.next()) 
            {
                user = new Usuario();
                user.setUsuario(resultSet.getString(1));
                user.setNombre(resultSet.getString(2));
                user.setApellido_paterno(resultSet.getString(3));
                user.setApellido_materno(resultSet.getString(4));
                user.setEdad(resultSet.getInt(5));
                user.setFecha(resultSet.getDate(6));
                userList.add(user);
            }
            resultSet.close();
            closeConnection(connection);
            return userList;
        } 
        catch (SQLException ex) 
        {
            ex.printStackTrace();
        }
        return null;
    }
}
