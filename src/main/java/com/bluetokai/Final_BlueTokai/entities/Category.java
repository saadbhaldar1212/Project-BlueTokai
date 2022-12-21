package com.bluetokai.Final_BlueTokai.entities;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.*;

@Entity
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int c_id;
    private String c_title;
    private String c_desc;

    @OneToMany(mappedBy = "category")
    private List<Product> products = new ArrayList<Product>();

    public Category(int c_id, String c_title, String c_desc) {
        this.c_id = c_id;
        this.c_title = c_title;
        this.c_desc = c_desc;
    }

    public Category(String c_title, String c_desc, List<Product> products) {
        this.c_title = c_title;
        this.c_desc = c_desc;
        this.products = products;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public Category() {

    }

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public String getC_title() {
        return c_title;
    }

    public void setC_title(String c_title) {
        this.c_title = c_title;
    }

    public String getC_desc() {
        return c_desc;
    }

    public void setC_desc(String c_desc) {
        this.c_desc = c_desc;
    }

    @Override
    public String toString() {
        return "Category [c_id=" + c_id + ", c_title=" + c_title + ", c_desc=" + c_desc + "]";
    }

}
