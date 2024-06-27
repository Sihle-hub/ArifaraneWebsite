package com.example.demo.domain;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Event {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
	
	  @Column
	   private String name;
	   
	   @Column 
	   private Date address;
	   
	   @Column 
	   private String description;

	   
	   
	public Event() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Event(String name, Date address, String description) {
		super();
		this.name = name;
		this.address = address;
		this.description = description;
	}

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public Date getAddress() {
		return address;
	}



	public void setAddress(Date address) {
		this.address = address;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}

	   
	   

}
