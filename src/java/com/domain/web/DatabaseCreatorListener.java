
package com.domain.web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class DatabaseCreatorListener implements ServletContextListener {

    private void createHourPriceTable(Statement s){
        try{
                s.execute("CREAT TABLE hour_price(" + 
                    " id INTEGER NOT NULL GENERATED ALWAYS " +        
                    " AS IDENTITY (START WITH1, INCREMENT BY1)" +
                    " , datetime timestamp not null" +
                    " , price numeric(10,2) not null)");
                System.out.println("Criada a tabela hour_price.");                    
            }catch(Exception ex2){
                System.out.println("Erro ao criar a tabela hour_price: "+ex2.getMessage());
            }
    }
    private void createUsersTable(Statement s){
          try{
                s.execute("CREAT TABLE users(" + 
                    " id INTEGER NOT NULL GENERATED ALWAYS " +        
                    " AS IDENTITY (START WITH1, INCREMENT BY1)" +
                    " , name varchar(200) not null" +
                    " , login varchar(50) not null)" +
                    " , pass_has varchar(200) not null");
                System.out.println("Criada a tabela users."); 
                s.execute("INSERT into users VALUES("
                        + "default"
                        + ", 'Administrador do Sistema'"
                        + ", 'admin'"
                        + ", '"+"1234".hashCode()+"'");
                System.out.println("Usuaio admin criado com a senha '1234'");
            }catch(Exception ex2){
                System.out.println("Erro ao criar a tabela users: "+ex2.getMessage());
            }
    }
    private void createVehicleStaysTable(Statement s){
        try{
            s.execute( "CREATE TABLE vehicles_stays("
                    + " id INTEGER NOT NULL GENERATED ALWAYS "
                    + " AS IDENTITY (START WITH 1, INCREMENTAL BY1) "
                    + ", vehicle_model varchar(50) not null"
                    + ", vehicle_color varchar(20) not null"
                    + ", vehicle_plate varchar(7) not null"
                    + ", begin_stay timestamp not null"
                    + ", end_stay timestamp"
                    + ", price numeric(10,2)");
            System.out.println("Criada a tabela vehicles_stays.");
        }catch(Exception ex2){
            System.out.println("Erro ao criar a tabela vehicles_stays.");
        }
    }
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try{
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            String url = "jdbc:derby:WebParkingDb;creat=true";
            Connection c = DriverManager.getConnection(url);
            Statement s = c.createStatement();
            System.out.println("Iniciando a criação do BD");
            createHourPriceTable(s);
            createUsersTable(s);
            createVehicleStaysTable(s);
            s.close();
            c.close();
        }catch(Exception ex){
            System.out.println("Erro: "+ex.getMessage());
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        
    }
}
