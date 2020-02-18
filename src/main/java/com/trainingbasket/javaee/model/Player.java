package com.trainingbasket.javaee.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "players")
public class Player {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	int id;
	public Player(int id, String name, Date dob, String contactNumber, String address, String email, String gender,
			League league) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.contactNumber = contactNumber;
		this.address = address;
		this.email = email;
		this.gender = gender;
		this.league = league;
	}

	@Column(name = "name")
	String name;
	@Column(name = "dob")
	Date dob;
	@Column(name = "contactnumber")
	String contactNumber;
	@Column(name = "address")
	String address;
	@Column(name = "email")
	String email;
	@Column(name = "gender")
	String gender;
	@Column(name = "league")
	League league;

	public League getLeague() {
		return league;
	}

	public void setLeague(League league) {
		this.league = league;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Player() {
	
	}

	@Override
	public String toString() {
		return "Player [name=" + name + ", dob=" + dob + ", contactNumber=" + contactNumber + ", address=" + address
				+ ", email=" + email + ", gender=" + gender + ", league=" + league + "]";
	}

}
