/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.crime_tracker.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.xml.ws.Response;

/**
 *
 * @author admin
 */
public class AddressDAO {

    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;
    private List<String> dist, state, city, police;
    private int i = 0;

    public List<String> getstate() {
        try {
            con = webservices.getConnection();
            ps = con.prepareStatement("select distinct state from district");
            rs = ps.executeQuery();
            state = new ArrayList<>();
            while (rs.next()) {
                state.add(rs.getString("state"));
            }
            con.close();
            return state;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<String> getdistrict() {
        try {
            con = webservices.getConnection();
            ps = con.prepareStatement("select distinct district_name from district");
            rs = ps.executeQuery();
            dist = new ArrayList<>();
            while (rs.next()) {
                dist.add(rs.getString("district_name"));
            }
            con.close();
            return dist;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<String> getdist(String val) {
        try {
            con = webservices.getConnection();
            ps = con.prepareStatement("select distinct district_name from district where state=?");
            ps.setString(1, val);
            rs = ps.executeQuery();
            dist = new ArrayList<>();
            while (rs.next()) {
                dist.add(rs.getString("district_name"));
            }
            con.close();
            return dist;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<String> getCity(String state) {
        try {
            con = webservices.getConnection();
            ps = con.prepareStatement("select distinct city from district where district_name = ?");
            ps.setString(1, state);
            rs = ps.executeQuery();
            city = new ArrayList<>();
            while (rs.next()) {
                city.add(rs.getString("city"));
            }
            con.close();
            return city;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<String> getct(String state) {
        try {
            con = webservices.getConnection();
            ps = con.prepareStatement("select distinct city from district where state = ?");
            ps.setString(1, state);
            rs = ps.executeQuery();
            city = new ArrayList<>();
            while (rs.next()) {
                city.add(rs.getString("city"));
            }
            con.close();
            return city;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void insertvalue(List<String> values) {
        String[] ss = new String[11];

        for (String z : values) {
            ss[i] = z;
            i++;
        }

        try {
            Date dt = new Date();
            SimpleDateFormat ft = new SimpleDateFormat("YYYY-MM-dd");
            con = webservices.getConnection();
            //System.out.println("Done");
            ps = con.prepareStatement("insert into crime(victum,crime_type,why,date_of_crime,state,district,place,address,description,who,date_post,images,status) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, ss[0]);
            ps.setString(2, ss[1]);
            ps.setString(3, ss[3]);
            ps.setString(4, ss[2]);
            ps.setString(5, ss[4]);
            ps.setString(6, ss[5]);
            ps.setString(7, ss[6]);
            ps.setString(8, ss[7]);
            ps.setString(9, ss[8]);
            ps.setString(10, ss[9]);
            ps.setString(11, ft.format(dt));
            ps.setString(12, ss[10]);
            ps.setString(13, "Not Assigned");
            ps.executeUpdate();
            ss=null;
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public List<String> getpolice(String pol) {
        try {
            con = webservices.getConnection();
            //System.out.print("Hello");
            ps = con.prepareStatement("select username from police_station where city= ?");
            ps.setString(1, pol);
            rs = ps.executeQuery();
            police = new ArrayList<>();
            while (rs.next()) {
                police.add(rs.getString("username"));
            }

        } catch (Exception e) {
            e.printStackTrace();
            //System.out.print(e);

        }
        return police;
    }

    public void assign(int id, String officer, int cc) {
        try {
            con = webservices.getConnection();

            ps = con.prepareStatement("update crime set status='Assigned',assigned='" + officer + "' where id=?");
            ps.setString(1, String.valueOf(id));
            ps.executeUpdate();
            ps.close();

            ps = con.prepareStatement("update police_station set no_reports=? where username=?");
            ps.setInt(1, cc + 1);
            ps.setString(2, officer);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void fraud(String user, String id) {
        try {
            con = webservices.getConnection();
            ps = con.prepareStatement("update user set status='Fraud' where username=?");
            ps.setString(1, user);
            ps.executeUpdate();

            ps = con.prepareStatement("update crime set status='Fraud' where id=?");
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void investigation(String id, String msg) {
        con = webservices.getConnection();
        try {
            ps = con.prepareStatement("update crime set investigation=? where id=?");
            ps.setString(1, msg);
            ps.setString(2, id);
            ps.executeUpdate();
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }

    public void up_status(String id, String msg) {
        con = webservices.getConnection();
        try {
            ps = con.prepareStatement("update crime set status=? where id=?");
            ps.setString(1, msg);
            ps.setString(2, id);
            ps.executeUpdate();
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }

    public void updateho(String id, String officer, String position, String state, String city, String email) {
        try {
            con = webservices.getConnection();
            ps = con.prepareStatement("update head_office set incharge_officer=?,position=?,state=?,city=?,email=? where id=?");
            ps.setString(1, officer);
            ps.setString(2, position);
            ps.setString(3, state);
            ps.setString(4, city);
            ps.setString(5, email);
            ps.setString(6, id);
            ps.executeUpdate();
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }

    public void missing(List<String> values) {
        String[] ss = new String[10];
        i = 1;
        for (String z : values) {
            ss[i] = z;
            i++;
        }
        try {
            con = webservices.getConnection();
            ps = con.prepareStatement("insert into missing_person (user,full_name,age,address,city,state,image,status) values(?,?,?,?,?,?,?,?)");
            ps.setString(1, ss[1]);
            ps.setString(2, ss[2]);
            ps.setInt(3, Integer.valueOf(ss[3]));
            ps.setString(4, ss[4]);
            ps.setString(5, ss[6]);
            ps.setString(6, ss[5]);
            ps.setString(7, ss[7]);
            ps.setString(8, "Not Found");
            ps.executeUpdate();
        } catch (Exception exception) {
            System.out.println(exception);
        }
    }

    public void updateps(String id, String officer, String position, String state, String dist, String city, String email) {
        try {
            con = webservices.getConnection();
            ps = con.prepareStatement("update police_station set incharge_officer=?,position=?,state=?,district=?,city=?,email=? where id=?");
            ps.setString(1, officer);
            ps.setString(2, position);
            ps.setString(3, state);
            ps.setString(4, dist);
            ps.setString(5, city);
            ps.setString(6, email);
            ps.setString(7, id);
            ps.executeUpdate();
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }

    public void add_vehicle(String type, String v_no, String place, String chases_no, String company_name, String model) {
        con = webservices.getConnection();
        try {
            ps = con.prepareStatement("insert into vehicle (vehicle_type,vehicle_no,lost_from,chases_no,company,model,found_at) values(?,?,?,?,?,?,?)");
            ps.setString(1, type);
            ps.setString(2, v_no);
            ps.setString(3, place);
            ps.setString(4, chases_no);
            ps.setString(5, company_name);
            ps.setString(6, model);
            ps.setString(7, "Not Found Yet");
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
        }
    }
    public void up_veh(String no,String place)
    {
        con = webservices.getConnection();
        try {
            ps = con.prepareStatement("update vehicle set found_at=? where vehicle_no=?");
            ps.setString(1, place);
            ps.setString(2, no);
            ps.executeUpdate();
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }
    public void contact(String name,String email,String message)
    {
        con = webservices.getConnection();
        try{
            ps = con.prepareStatement("insert into contact(name,email,message) values(?,?,?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, message);
            ps.executeUpdate();
        }
        catch(Exception e)
        {
            e.printStackTrace();
            
        }
    }
    public int imgno()
    {
        con = webservices.getConnection();
        int no=0;
        try {
            ps = con.prepareStatement("select id from crime ORDER BY id DESC LIMIT 1");
            rs = ps.executeQuery();
        
        if(rs.next())
        {
         no=Integer.parseInt(rs.getString("id"));
            System.out.println("hello");
        }
        } catch (SQLException sQLException) {
        }
        return no;
    }
    public void up_user(String id)
    {
        con = webservices.getConnection();
        try{
            ps = con.prepareStatement("update user set status=? where usr_id=?");
            ps.setString(1, "No fraud");
            ps.setString(2, id);
            ps.executeUpdate();
            
        }
        catch(Exception e)
        {
            
        }
    }
    public void up_feed(String id)
    {
        con = webservices.getConnection();
        try{
            ps = con.prepareStatement("update contact set status=? where id=?");
            ps.setString(1, "done");
            ps.setString(2, id);
            ps.executeUpdate();
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
