package com.distribuida.controller;

import java.util.List;

//import javax.validation.OverridesAttribute;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.CategoriaDAO;
import com.distribuida.entities.Categoria;


@Controller
@RequestMapping("/categorias") //son las URL Path Principal
public class CategoriaController {
	
	@Autowired
	private CategoriaDAO categoriaDAO;
	
	// Path Secundario
	@GetMapping("/findALL") 
	public String findALL(Model model){
		
		//try {
 List<Categoria> categorias = categoriaDAO.findAll();
		
		model.addAttribute("keyCategoria", categorias);
		 // Nombre del Formulario Web EJ: categorias-listar o "categorias-listar.html" 
		return "categorias-listar"; 
	
	//	} catch (Exception e) {
			// TODO: handle exception
		//}
	}
	
	@GetMapping("/findOne")    // findOne se suele utilizar para actualizar o borrar un dato de un formulario
	public String findOne(@RequestParam("idCategoria")@Nullable Integer idCategoria
			,@RequestParam("opcion")@Nullable Integer opcion
			,Model model
			) {
		
		//try{
			if(idCategoria !=null) {
				Categoria categoria = categoriaDAO.findOne(idCategoria);
				model.addAttribute("categoria", categoria);
			}
			// formulario  web categorias add se usa para agregar o actualizar. 
			if(opcion ==  1) return "categorias-add" ;
			else return "categorias-del";
	//} catch (Exception e){
		
	//}
	}
		
	@PostMapping ("/add")
	public String add(@RequestParam("idCategoria")@Nullable Integer idCategoria 
			,@RequestParam("categoria")@Nullable String categoria
			,@RequestParam("descripcion")@Nullable String descripcion
			, Model model
			
	
			){
		
//try {
	
	/*	if(idCategoria == null){
			Categoria categoria = new Categoria(0,categoria,descripcion);
			categoriaDAO.add(categoria);
			
		}else {
			Categoria categoria= new Categoria(idCategoria,categoria,descripcion);
			categoriaDAO.up(categoria);

		*/
		
	return "redirect:/categorias/findAll";
	// catch (Exception e) {
			// TODO: handle exception
	// }
		
		
	}
	
	@GetMapping("/del")
	public String del(@RequestParam("idCategorias")@Nullable Integer idCategoria) {
//try {
			categoriaDAO.del(idCategoria);
			return "redirect:/categorias/findAll";
//} catch (Exception e) {
			// TODO: handle exception
	//e.printStackTrace();
//}
		
	}
	
	
	}
	
	

