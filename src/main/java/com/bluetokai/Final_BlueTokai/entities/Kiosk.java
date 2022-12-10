package com.bluetokai.Final_BlueTokai.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Kiosk {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int kio_id;
	private String kio_uname;
	private String kio_company;
	private String kio_designation;
	private String kio_ucontact;
	private String kio_eid;
	private String kio_city;
	private String kio_state;
	private String kio_requirement;

	public Kiosk(int kio_id, String kio_uname, String kio_company, String kio_designation, String kio_ucontact,
			String kio_eid, String kio_city, String kio_state, String kio_requirement) {
		super();
		this.kio_id = kio_id;
		this.kio_uname = kio_uname;
		this.kio_company = kio_company;
		this.kio_designation = kio_designation;
		this.kio_ucontact = kio_ucontact;
		this.kio_eid = kio_eid;
		this.kio_city = kio_city;
		this.kio_state = kio_state;
		this.kio_requirement = kio_requirement;
	}

	public Kiosk(String kio_uname, String kio_company, String kio_designation, String kio_ucontact, String kio_eid,
			String kio_city, String kio_state, String kio_requirement) {
		super();
		this.kio_uname = kio_uname;
		this.kio_company = kio_company;
		this.kio_designation = kio_designation;
		this.kio_ucontact = kio_ucontact;
		this.kio_eid = kio_eid;
		this.kio_city = kio_city;
		this.kio_state = kio_state;
		this.kio_requirement = kio_requirement;
	}

	public Kiosk() {
		super();
	}

	public int getKio_id() {
		return kio_id;
	}

	public void setKio_id(int kio_id) {
		this.kio_id = kio_id;
	}

	public String getKio_uname() {
		return kio_uname;
	}

	public void setKio_uname(String kio_uname) {
		this.kio_uname = kio_uname;
	}

	public String getKio_company() {
		return kio_company;
	}

	public void setKio_company(String kio_company) {
		this.kio_company = kio_company;
	}

	public String getKio_designation() {
		return kio_designation;
	}

	public void setKio_designation(String kio_designation) {
		this.kio_designation = kio_designation;
	}

	public String getKio_ucontact() {
		return kio_ucontact;
	}

	public void setKio_ucontact(String kio_ucontact) {
		this.kio_ucontact = kio_ucontact;
	}

	public String getKio_eid() {
		return kio_eid;
	}

	public void setKio_eid(String kio_eid) {
		this.kio_eid = kio_eid;
	}

	public String getKio_city() {
		return kio_city;
	}

	public void setKio_city(String kio_city) {
		this.kio_city = kio_city;
	}

	public String getKio_state() {
		return kio_state;
	}

	public void setKio_state(String kio_state) {
		this.kio_state = kio_state;
	}

	public String getKio_requirement() {
		return kio_requirement;
	}

	public void setKio_requirement(String kio_requirement) {
		this.kio_requirement = kio_requirement;
	}

	@Override
	public String toString() {
		return "Kiosk [kio_id=" + kio_id + ", kio_uname=" + kio_uname + ", kio_company=" + kio_company
				+ ", kio_designation=" + kio_designation + ", kio_ucontact=" + kio_ucontact + ", kio_eid=" + kio_eid
				+ ", kio_city=" + kio_city + ", kio_state=" + kio_state + ", kio_requirement=" + kio_requirement + "]";
	}
	
	


}
