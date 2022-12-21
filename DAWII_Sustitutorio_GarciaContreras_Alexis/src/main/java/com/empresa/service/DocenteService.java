package com.empresa.service;

import java.util.List;

import com.empresa.entity.Docente;

public interface DocenteService {

	public abstract List<Docente> listaDocente();
	
	
	public List<Docente> listaDocentePorNombreEmail(String nombre, String email);
	
}
