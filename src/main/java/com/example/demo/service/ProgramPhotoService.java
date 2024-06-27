package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.domain.ProgramPhoto;
import com.example.demo.repository.ProgramPhotoRepository;

@Service
public class ProgramPhotoService {
	
	@Autowired
	private ProgramPhotoRepository repo;
	
	public List<ProgramPhoto> listAll(){
		
		  return repo.findAll();
	}
	
	public void save(ProgramPhoto msc) {
		
		  repo.save(msc);
	}

}
