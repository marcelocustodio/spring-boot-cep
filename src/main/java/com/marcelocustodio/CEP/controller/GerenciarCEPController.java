package com.marcelocustodio.CEP.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.marcelocustodio.CEP.model.CEP;
import com.marcelocustodio.CEP.service.CEPService;

@RestController
@RequestMapping("/api")
public class GerenciarCEPController {

	@Autowired
	private CEPService cepService;
	
	
	@RequestMapping(value = "/cadastrarCEP", method = RequestMethod.POST)
	public CEP cadastrarCEP(@RequestBody CEP cep) {
		return cepService.save(cep);
	}
	
	@RequestMapping(value = "/consultarCEP/{endereco}", method = RequestMethod.GET)
	public String consultarCEP(@PathVariable String endereco) {
		return cepService.consultarCEP(endereco);
	}
	
	@RequestMapping(value = "/consultarEndereco/{cep}", method = RequestMethod.GET)
	public String consultarEndereco(@PathVariable String cep) {
		return cepService.consultarEndereco(cep);
	}
	
	@RequestMapping(value = "/excluirCEP/{cep}", method = RequestMethod.DELETE)
	public boolean excluirCEP(@PathVariable String cep) {
		return cepService.excluirCEP(cep);
	}

}
