package com.bluetokai.Final_BlueTokai.dao;

import java.util.List;

import org.hibernate.*;
import org.hibernate.query.Query;

import com.bluetokai.Final_BlueTokai.entities.User;

public class UserDao {

    private SessionFactory factory;

    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }

    // get user by email and password
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;

        try {

            String query = "from User where userEmail =: e and userPassword1 =:p";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("e", email);
            q.setParameter("p", password);

            user = (User) q.uniqueResult();

            session.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    // get user by email only
    public User getUserByEmail(String email) {
        User user = null;

        try {

            String query = "from User where userEmail =: e";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("e", email);

            user = (User) q.uniqueResult();

            session.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    //fetch individual
    public User getIndividualUser(String name, String email, String password) {
        User user = null;

        try {
            String query = "from User where userName =: u and userEmail =: e and userPassword1 =: p";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);

            q.setParameter("u", name);
            q.setParameter("e", email);
            q.setParameter("p", password);
            user = (User) q.uniqueResult();

            session.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    // get all users
    public List<User> getAllUsers() {

        Session s = this.factory.openSession();
        Query q = s.createQuery("from User");
        List<User> list = q.list();

        return list;

    }

}
