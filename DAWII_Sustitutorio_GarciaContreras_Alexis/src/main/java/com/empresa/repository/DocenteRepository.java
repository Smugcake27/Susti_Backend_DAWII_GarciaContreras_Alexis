package com.empresa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.empresa.entity.Docente;

public interface DocenteRepository extends JpaRepository<Docente, Integer> {

	//JPQL
	//Query no con tablas sino con clases que tienen @Entity
	
	@Query("select x from Docente x where (x.nombre like ?1) and (x.email like ?2)")    
	public List<Docente> listaDocentePorNombreEmail(String nombre, String email);
	
}


