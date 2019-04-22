package com.marcelocustodio.CEP.persistence.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.marcelocustodio.CEP.model.CEP;

@Repository
public interface CEPRepository extends JpaRepository<CEP, Long> {
	    
}