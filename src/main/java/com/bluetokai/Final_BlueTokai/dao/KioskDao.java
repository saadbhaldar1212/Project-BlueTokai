package com.bluetokai.Final_BlueTokai.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.bluetokai.Final_BlueTokai.entities.Kiosk;

public class KioskDao {

    private SessionFactory factory;

    public KioskDao(SessionFactory factory) {
        this.factory = factory;
    }

//	saves the category to db
    public int saveCategory(Kiosk kio) {

        Session session = this.factory.openSession();
        Transaction tx = session.beginTransaction();
        int kioId = (Integer) session.save(kio);

        try {

            tx.commit();
            session.close();

        } catch (Exception e) {

            e.printStackTrace();
        }
        return kioId;
    }

    public List<Kiosk> getInfo() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Kiosk");
        List<Kiosk> list = query.list();
        return list;

    }
}
