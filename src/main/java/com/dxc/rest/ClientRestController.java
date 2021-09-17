package com.dxc.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.dxc.dao.ClientDao;
import com.dxc.entity.Client;

@CrossOrigin("*")
@RestController
public class ClientRestController {

	@Autowired
	ClientDao dao;
	
	
	@GetMapping("abc.com/rest/clients")
	public List<Client> getAll(){
		return dao.findAll();
	}
	
	@GetMapping("abc.com/rest/clients/{id}")
	public Client getOneClient(@PathVariable("id") String id) {
		return dao.findById(id).get();
	}
	
	@PutMapping("abc.com/rest/clients/{id}")
	public Client update(@PathVariable("id") String id, @RequestBody Client client) {
		dao.save(client);
		return client;
	}
	
}
