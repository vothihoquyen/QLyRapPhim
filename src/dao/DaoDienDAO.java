/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import model.DaoDien;

/**
 *
 * @author Darkmoon
 */
public class DaoDienDAO {

    public static ArrayList<DaoDien> listDaoDien() {
        ArrayList<DaoDien> dsdd = new ArrayList<>();
        try {
            ResultSet rs = new DBConnect().chonDuLieuTuDTB("select * from DAODIEN");

            while (rs.next()) {
                String idDD = rs.getString(1);
                String tenDD = rs.getNString(2);
                String queQuan = rs.getNString(3);
                dsdd.add(new DaoDien(idDD, tenDD, queQuan));
            }
        } catch (Exception e) {
            System.out.println("DaoDienDAO: " + e.getMessage());
            e.printStackTrace();
        }
        return dsdd;
    }

}
