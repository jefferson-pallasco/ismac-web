package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.AutorDAO;
import com.distribuida.entities.Autor;


@Controller
@RequestMapping("/autores") //son las URL Path Principal
public class AutorController {
	
	@Autowired
	@Qualifier("autorDAOImpl3")
	private AutorDAO autorDAO;
	
	// Path Secundario
	@GetMapping("/findAll") 
	public String findAll(Model model){
		
		//try {
 List<Autor> autores = autorDAO.findAll();
		
		model.addAttribute("autores", autores);
		 // Nombre del Formulario Web EJ: autores-listar o "autores-listar.html" 
		return "autores-listar"; 
	
	//	} catch (Exception e) {
			// TODO: handle exception
		//}
	}
	
	@GetMapping("/findOne")    // findOne se suele utilizar para actualizar o borrar un dato de un formulario
	public String findOne(@RequestParam("idAutor")@Nullable Integer idAutor
			,@RequestParam("opcion")@Nullable Integer opcion
			,Model model
			) {
		
		//try{
			if(idAutor !=null) {
				Autor autor = autorDAO.findOne(idAutor);
				model.addAttribute("autor", autor);
			}
			// formulario  web clientes add se usa para agregar o actualizar. 
			if(opcion ==  1) return "autores-add" ;
			else return "autores-del";
	//} catch (Exception e){
		
	//}
	}
		
	@PostMapping ("/add")
	public String add(@RequestParam("idAutor")@Nullable Integer idAutor 
			,@RequestParam("nombre")@Nullable String nombre
			,@RequestParam("apellido")@Nullable String apellido
			,@RequestParam("pais")@Nullable String pais
			,@RequestParam("direccion")@Nullable String direccion
			,@RequestParam("telefono")@Nullable String telefono
			,@RequestParam("correo")@Nullable String correo
			, Model model
			
			){
//try {
		if(idAutor == null){
			Autor autor = new Autor(0,nombre,apellido,pais,direccion,telefono,correo);
			autorDAO.add(autor);
			
		}else {
			Autor autor = new Autor(idAutor,nombre,apellido,pais,direccion,telefono,correo);
			autorDAO.up(autor);
			
		}
		
	return "redirect:/autores/findAll";
	// catch (Exception e) {
			// TODO: handle exception
	// }
		
		
	}
	
	@GetMapping("/del")
	public String del(@RequestParam("idAutor")@Nullable Integer idAutor) {
//try {
			autorDAO.del(idAutor);
			return "redirect:/autores/findAll";
//} catch (Exception e) {
			// TODO: handle exception
	//e.printStackTrace();
//}
		
	}
	
	
	}
	
	

