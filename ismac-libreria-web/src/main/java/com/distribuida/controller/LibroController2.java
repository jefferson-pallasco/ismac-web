package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.distribuida.dao.CategoriaDAO;
import com.distribuida.dao.LibroDAO;
import com.distribuida.entities.Libro;
import com.distribuida.dao.AutorDAO;

@Controller
@RequestMapping("/libros2")
public class LibroController2 {

	@Autowired
	private LibroDAO libroDAO; 
	
	@Autowired
	private CategoriaDAO categoriaDAO; 
	

	@Autowired
	@Qualifier("autorDAOImpl3")
	private AutorDAO AutorDAO; 
	 
	
	@GetMapping("/findAll")
	private String findAll(ModelMap modelMap) {
		List<Libro> libros =libroDAO.findAll();
		modelMap.addAttribute("libros",libros);
		
		
		return"libros-listar";
		
	}

	
}
