package com.skillsoft;

import com.skillsoft.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    public static Connection getConnection() {
        Connection con = null;

        try {


            String url = "jdbc:mysql://localhost:3306/JSPDatabase";
            String username = "root";
            String password = "";
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, username, password);

        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }

    public static List<User> getAllRecords() {

        List<User> userList = new ArrayList<User>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from Customers");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setName(rs.getString("name"));
                u.setEmail(rs.getString("email"));
                u.setGender(rs.getString("gender"));
                u.setCountry(rs.getString("country"));
                userList.add(u);
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
            return userList;
    }

    public static User getRecordById(int id){

        User user = null;
        try{
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from Customers where id=?");
            ps.setInt(1,id);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setGender(rs.getString("gender"));
                user.setCountry(rs.getString("country"));
            }
            con.close();
        }catch (Exception e){
            System.out.println(e);
        }
        return user;
    }

    public static int save(User u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps= con.prepareStatement("insert into Customers(name, email, gender, country) values(?,?,?,?)");
            ps.setString(1, u.getName());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getGender());
            ps.setString(4, u.getCountry());
            status=ps.executeUpdate();

        } catch (Exception e){
            System.out.println(e);
        }
        return status;
    }


    public static int update(User u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps= con.prepareStatement("update Customers set name=?, email=?, gender=?, country=? where id=?");
            ps.setString(1, u.getName());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getGender());
            ps.setString(4, u.getCountry());
            ps.setInt(5, u.getId());
            status=ps.executeUpdate();

            con.close();
        } catch (Exception e){
            System.out.println(e);
        }
        return status;
    }

    public static int delete(User u){
        int status=0;

        try{
            Connection con = getConnection();
            PreparedStatement ps=con.prepareStatement("delete from Customers where id=?");
            ps.setInt(1,u.getId());
            status=ps.executeUpdate();

            con.close();
        }
        catch (Exception e){
            System.out.println(e);
        }
        return status;
    }


}
