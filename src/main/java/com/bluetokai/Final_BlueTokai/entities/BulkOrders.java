package com.bluetokai.Final_BlueTokai.entities;

import jakarta.persistence.*;

@Entity
public class BulkOrders {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bo_id;
	private String bo_uname;
	private String bo_eid;
	private String bo_contact;
	private String bo_address;
	private String bo_city;
	private String bo_zip;
	
	public BulkOrders(int bo_id, String bo_uname, String bo_eid, String bo_contact, String bo_address, String bo_city,
			String bo_zip) {
		super();
		this.bo_id = bo_id;
		this.bo_uname = bo_uname;
		this.bo_eid = bo_eid;
		this.bo_contact = bo_contact;
		this.bo_address = bo_address;
		this.bo_city = bo_city;
		this.bo_zip = bo_zip;
	}

	public BulkOrders(String bo_uname, String bo_eid, String bo_contact, String bo_address, String bo_city,
			String bo_zip) {
		super();
		this.bo_uname = bo_uname;
		this.bo_eid = bo_eid;
		this.bo_contact = bo_contact;
		this.bo_address = bo_address;
		this.bo_city = bo_city;
		this.bo_zip = bo_zip;
	}

	public BulkOrders() {
		super();
	}

	public int getBo_id() {
		return bo_id;
	}

	public void setBo_id(int bo_id) {
		this.bo_id = bo_id;
	}

	public String getBo_uname() {
		return bo_uname;
	}

	public void setBo_uname(String bo_uname) {
		this.bo_uname = bo_uname;
	}

	public String getBo_eid() {
		return bo_eid;
	}

	public void setBo_eid(String bo_eid) {
		this.bo_eid = bo_eid;
	}

	public String getBo_contact() {
		return bo_contact;
	}

	public void setBo_contact(String bo_contact) {
		this.bo_contact = bo_contact;
	}

	public String getBo_address() {
		return bo_address;
	}

	public void setBo_address(String bo_address) {
		this.bo_address = bo_address;
	}

	public String getBo_city() {
		return bo_city;
	}

	public void setBo_city(String bo_city) {
		this.bo_city = bo_city;
	}

	public String getBo_zip() {
		return bo_zip;
	}

	public void setBo_zip(String bo_zip) {
		this.bo_zip = bo_zip;
	}

	@Override
	public String toString() {
		return "BulkOrders [bo_id=" + bo_id + ", bo_uname=" + bo_uname + ", bo_eid=" + bo_eid + ", bo_contact="
				+ bo_contact + ", bo_address=" + bo_address + ", bo_city=" + bo_city + ", bo_zip=" + bo_zip + "]";
	}
	
	


}
