package com.example.demo.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name="Sponser")
public class Photo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
	
 
   @Column
   private String fullName;
   
   @Column 
   private String address;
   
   @Column 
   private String cellNumber;
   
   @Column 
   private String org;
   
   @Column 
   private String msg;

	public Photo() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	public Photo(String fullName, String address, String cellNumber, String org, String msg) {
		super();
		
		this.fullName = fullName;
		this.address = address;
		this.cellNumber = cellNumber;
		this.org = org;
		this.msg = msg;
	}



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}


	public String getFullName() {
		return fullName;
	}


	public void setFullName(String fullName) {
		this.fullName = fullName;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getCellNumber() {
		return cellNumber;
	}


	public void setCellNumber(String cellNumber) {
		this.cellNumber = cellNumber;
	}


	public String getOrg() {
		return org;
	}


	public void setOrg(String org) {
		this.org = org;
	}


	public String getMsg() {
		return msg;
	}


	public void setMsg(String msg) {
		this.msg = msg;
	}

	

    
	
}
