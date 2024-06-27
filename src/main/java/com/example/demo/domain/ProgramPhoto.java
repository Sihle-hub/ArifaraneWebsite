package com.example.demo.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;

@Entity
public class ProgramPhoto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
	
	
	   @Lob
	   @Column(columnDefinition = "longblob")
    private byte[] image;
	
	   @Column
	   private String title;
	   
	   @Column 
	   private String description;
	

	public ProgramPhoto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProgramPhoto(byte[] image , String title , String description) {
		super();
		this.image = image;
		this.title = title;
		this.description = description;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	

}
