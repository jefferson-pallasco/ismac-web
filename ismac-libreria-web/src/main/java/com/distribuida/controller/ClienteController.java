package com.distribuida.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.ClienteDAO;
import com.distribuida.entities.Cliente;


@Controller
@RequestMapping("/clientes") //son las URL Path Principal
public class ClienteController {
	
	@Autowired
	private ClienteDAO clienteDAO;
	
	// Path Secundario
	@GetMapping("/findAll") 
	public String findAll(Model model){
		
		//try {
List<Cliente> clientes = clienteDAO.findAll();
		
		model.addAttribute("clientes", clientes);
		 // Nombre del Formulario Web EJ: clientes-listar o "clientes-listar.html" 
		return "clientes-listar"; 
	
	//	} catch (Exception e) {
			// TODO: handle exception
		//}
	}
	
	@GetMapping("/findOne")    // findOne se suele utilizar para actualizar o borrar un dato de un formulario
	public String findOne(@RequestParam("idCliente")@Nullable Integer idCliente
			,@RequestParam("opcion")@Nullable Integer opcion
			,Model model
			) {
		
		//try{
			if(idCliente !=null) {
				Cliente cliente = clienteDAO.findOne(idCliente);
				model.addAttribute("cliente", cliente);
			}
			// formulario  web clientes add se usa para agregar o actualizar. 
			if(opcion ==  1) return "clientes-add" ;
			else return "clientes-del";
	//} catch (Exception e){
		
	//}
	}
		
	@PostMapping ("/add")
	public String add(@RequestParam("idCliente")@Nullable Integer idCliente 
			,@RequestParam("cedula")@Nullable String cedula
			,@RequestParam("nombre")@Nullable String nombre
			,@RequestParam("apellido")@Nullable String apellido
			,@RequestParam("direccion")@Nullable String direccion
			,@RequestParam("telefono")@Nullable String telefono
			,@RequestParam("correo")@Nullable String correo
			, Model model
			
			){
//try {
		if(idCliente == null){
			Cliente cliente = new Cliente(0,cedula,nombre,apellido,direccion,telefono,correo);
			clienteDAO.add(cliente);
			
		}else {
			Cliente cliente = new Cliente(idCliente,cedula,nombre,apellido,direccion,telefono,correo);
			clienteDAO.up(cliente);
			
		}
		
	return "redirect:/clientes/findAll";
	// catch (Exception e) {
			// TODO: handle exception
	// }
		
		
	}
	
	@GetMapping("/del")
	public String del(@RequestParam("idCliente")@Nullable Integer idCliente) {
//try {
			clienteDAO.del(idCliente);
			return "redirect:/clientes/findAll";
//} catch (Exception e) {
			// TODO: handle exception
	//e.printStackTrace();
//}
		
	}
	
	
	}
	
	

