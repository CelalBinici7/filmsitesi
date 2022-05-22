package dao;

import entity.Kullanicilar;
import java.sql.Connection;
import java.sql.Statement;
import java.util.List;
import util.DBConnection;
import java.sql.ResultSet;
import java.util.ArrayList;

public class KullanicilarDAO extends DBConnection {

    

    public void createKullanicilar(Kullanicilar k) {
        try {

            Statement st = this.getConnection().createStatement();
            String q = "insert into kullanicilar (kullaniciadi,ad,soyad,eposta,sifre) values ('" + k.getKullaniciadi() + "','" + k.getAd() + "','" + k.getSoyad() + "','" + k.getEposta() + "','" + k.getSifre() + "')";
            st.executeUpdate(q);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

    public void deleteKullanicilar(Kullanicilar k) {
        try {

            Statement st = this.getConnection().createStatement();
            String q = "delete from kullanicilar where id =" + k.getId();
            st.executeUpdate(q);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        
    }

    public void updateKullanicilar(Kullanicilar k) {
        try {

            Statement st = this.getConnection().createStatement();
            String q = "update kullanicilar set kullaniciadi ='" + k.getKullaniciadi() + "', ad='" + k.getAd() + "', soyad='" + k.getSoyad() + "', eposta='" + k.getEposta() + "', sifre='" + k.getSifre() +  "' where id =" + k.getId();
            st.executeUpdate(q);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

    public List<Kullanicilar> getKullanicilarList() {
        List<Kullanicilar> KullanicilarList = new ArrayList<>();

        try {

            Statement st = this.getConnection().createStatement();
            String q = "select * from kullanicilar";
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) {
                KullanicilarList.add(new Kullanicilar(rs.getInt("id"), rs.getString("kullaniciadi"), rs.getString("ad"), rs.getString("soyad"), rs.getString("eposta"), rs.getString("sifre")));

            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return KullanicilarList;
    }

    

}