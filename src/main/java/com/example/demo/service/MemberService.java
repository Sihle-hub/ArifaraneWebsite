package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.domain.Member;
import com.example.demo.repository.MemberRepository;


@Service
public class MemberService {
	
	@Autowired
	private MemberRepository repo;
	
	public List<Member> listAll(){
		
		  return repo.findAll();
	}
	
	public void save(Member msc) {
		
		  repo.save(msc);
	}

}
