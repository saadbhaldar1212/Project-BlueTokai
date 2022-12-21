package com.bluetokai.Final_BlueTokai.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.bluetokai.Final_BlueTokai.entities.BulkOrders;

public class BulkOrdersDao {

    private SessionFactory factory;

    public BulkOrdersDao(SessionFactory factory) {
        this.factory = factory;
    }

//	saves the category to db
    public int saveCategory(BulkOrders bo) {

        Session session = this.factory.openSession();
        Transaction tx = session.beginTransaction();
        int boId = (Integer) session.save(bo);

        try {

            tx.commit();
            session.close();

        } catch (Exception e) {

            e.printStackTrace();
        }
        return boId;
    }

    public List<BulkOrders> getInfo() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from BulkOrders");
        List<BulkOrders> list = query.list();
        return list;

    }
}
