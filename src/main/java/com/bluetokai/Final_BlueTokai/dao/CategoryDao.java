package com.bluetokai.Final_BlueTokai.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.bluetokai.Final_BlueTokai.entities.Category;

public class CategoryDao {

    private SessionFactory factory;

    public CategoryDao(SessionFactory factory) {
        this.factory = factory;
    }

//	saves the category to db
    public int saveCategory(Category cat) {

        Session session = this.factory.openSession();
        Transaction tx = session.beginTransaction();
        int catId = (Integer) session.save(cat);

        try {

            tx.commit();
            session.close();

        } catch (Exception e) {

            e.printStackTrace();
        }
        return catId;
    }

    public List<Category> getCategories() {
        Session s = this.factory.openSession();
        Query query = s.createQuery("from Category");
        List<Category> list = query.list();
        return list;

    }

    public Category getCategoryById(int cId) {
        Category cat = null;
        try {

            Session session = this.factory.openSession();
            cat = session.get(Category.class, cId);
            session.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return cat;
    }

}
