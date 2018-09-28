package com.yc.movie.utils;

import org.apache.mahout.cf.taste.impl.model.jdbc.ConnectionPoolDataSource;
import org.apache.mahout.cf.taste.impl.model.jdbc.MySQLJDBCDataModel;
import org.apache.mahout.cf.taste.model.JDBCDataModel;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

public class MyDataModel {

	public static JDBCDataModel myDataModel() {
        MysqlDataSource dataSource = new MysqlDataSource();
        JDBCDataModel dataModel = null;
        try {
            dataSource.setServerName("localhost");
            dataSource.setUser("root");
            dataSource.setPassword("802312");
            dataSource.setDatabaseName("movie_pro");


            ConnectionPoolDataSource connectionPool=new ConnectionPoolDataSource(dataSource);
            // use JNDI
            dataModel = new MySQLJDBCDataModel(connectionPool,"ratings", "user_id", "movie_id","preference","ratings_time");

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return dataModel;
    } 

}
