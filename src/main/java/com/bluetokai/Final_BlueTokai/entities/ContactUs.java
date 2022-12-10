package com.bluetokai.Final_BlueTokai.entities;

import jakarta.persistence.*;

@Entity
public class ContactUs {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cont_id;
	private String cont_uname;
	private String cont_eid;
	private String cont_pname;
	private String bo_message;
	
	public ContactUs(int cont_id, String cont_uname, String cont_eid, String cont_pname, String bo_message) {
		super();
		this.cont_id = cont_id;
		this.cont_uname = cont_uname;
		this.cont_eid = cont_eid;
		this.cont_pname = cont_pname;
		this.bo_message = bo_message;
	}

	public ContactUs(String cont_uname, String cont_eid, String cont_pname, String bo_message) {
		super();
		this.cont_uname = cont_uname;
		this.cont_eid = cont_eid;
		this.cont_pname = cont_pname;
		this.bo_message = bo_message;
	}

	public ContactUs() {
		super();
	}

	public int getCont_id() {
		return cont_id;
	}

	public void setCont_id(int cont_id) {
		this.cont_id = cont_id;
	}

	public String getCont_uname() {
		return cont_uname;
	}

	public void setCont_uname(String cont_uname) {
		this.cont_uname = cont_uname;
	}

	public String getCont_eid() {
		return cont_eid;
	}

	public void setCont_eid(String cont_eid) {
		this.cont_eid = cont_eid;
	}

	public String getCont_pname() {
		return cont_pname;
	}

	public void setCont_pname(String cont_pname) {
		this.cont_pname = cont_pname;
	}

	public String getBo_message() {
		return bo_message;
	}

	public void setBo_message(String bo_message) {
		this.bo_message = bo_message;
	}

	@Override
	public String toString() {
		return "ContactUs [cont_id=" + cont_id + ", cont_uname=" + cont_uname + ", cont_eid=" + cont_eid
				+ ", cont_pname=" + cont_pname + ", bo_message=" + bo_message + "]";
	}
	
	
}
