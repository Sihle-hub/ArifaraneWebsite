package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.domain.ProgramPhoto;

public interface ProgramPhotoRepository  extends JpaRepository<ProgramPhoto, Long> {

}
