package com.bluetokai.Final_BlueTokai.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.bluetokai.Final_BlueTokai.entities.ContactUs;

public class ContactUsDao {

    private SessionFactory factory;

    public ContactUsDao(SessionFactory factory) {
        this.factory = factory;
    }

//	saves the category to db
    public int saveCategory(ContactUs cu) {

        Session session = this.factory.openSession();
        Transaction tx = session.beginTransaction();
        int contId = (Integer) session.save(cu);

        try {

            tx.commit();
            session.close();

        } catch (Exception e) {

            e.printStackTrace();
        }
        return contId;
    }

    public List<ContactUs> getContacts() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from ContactUs");
        List<ContactUs> list = query.list();
        return list;

    }

}
