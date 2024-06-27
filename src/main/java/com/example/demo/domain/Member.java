package com.example.demo.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;

@Entity
public class Member {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
	
	   @Column
	   private String name;
	   
	   @Column
	   private String surname;
	   
	   @Column 
	   private String position;
	   
	   @Lob
	   @Column(columnDefinition = "longblob")
	   private byte[] image;

	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Member(String name, String surname , String position, byte[] image) {
		super();
		this.name = name;
		this.position = position;
		this.image = image;
		this.surname = surname;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}
	   
	   

}
