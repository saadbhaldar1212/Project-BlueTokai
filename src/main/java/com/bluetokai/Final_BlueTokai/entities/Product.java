package com.bluetokai.Final_BlueTokai.entities;

import jakarta.persistence.*;


@Entity
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int p_id;
	private String p_name;
	private String p_desc;
	private String p_image;
	private int p_price;
	private int p_quant;
	
	
	@ManyToOne
	private Category category;
	
	public Product(String p_name, String p_image, int p_price, int p_quant, String p_desc, Category category) {
		this.p_name = p_name;
		this.p_desc = p_desc;
		this.p_image = p_image;
		this.p_price = p_price;
		this.p_quant = p_quant;
		this.category = category;
	}

	public Product() {
	}

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_image() {
		return p_image;
	}

	public void setP_image(String p_image) {
		this.p_image = p_image;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public int getP_quant() {
		return p_quant;
	}

	public void setP_quant(int p_quant) {
		this.p_quant = p_quant;
	}
	

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getP_desc() {
		return p_desc;
	}
	
	public void setP_desc(String p_desc) {
		this.p_desc = p_desc;
	}
	@Override
	
	public String toString() {
		return "Product [p_id=" + p_id + ", p_name=" + p_name + ", p_desc=" + p_desc + ", p_image=" + p_image
				+ ", p_price=" + p_price + ", p_quant=" + p_quant + ", category=" + category + "]";
	}
}
