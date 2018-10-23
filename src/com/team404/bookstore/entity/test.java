package com.team404.bookstore.entity;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class test
{
    public static void main(String argv[]){
        Configuration configuration = new Configuration();
        configuration.configure("hibernate.cfg.xml");

        SessionFactory sessionFactory = configuration.buildSessionFactory();

        Session session = sessionFactory.openSession();

        Transaction transaction = session.beginTransaction();

        UserEntity userEntity = new UserEntity();
        userEntity.setUsername("13Dong");
        userEntity.setPassword("12345");
        userEntity.setFirstname("weihan");
        userEntity.setLastname("zhang");

        session.save(userEntity);
        transaction.commit();
        session.close();
        System.out.println("Successful saved");
    }
}

