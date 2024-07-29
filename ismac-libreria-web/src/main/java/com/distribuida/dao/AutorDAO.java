package com.distribuida.dao;


import java.util.List;

import com.distribuida.entities.Autor;
import com.distribuida.entities.Categoria;


public interface AutorDAO {
	
	 
	public List<Autor>findAll();
	
	public Autor findOne(int id);
	public void add(Autor autor);
	public void up (Autor autor);
	public void del(int id);



}