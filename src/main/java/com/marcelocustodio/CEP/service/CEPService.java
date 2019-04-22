package com.marcelocustodio.CEP.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marcelocustodio.CEP.model.CEP;
import com.marcelocustodio.CEP.persistence.repo.CEPRepository;

@Service
public class CEPService {

	@Autowired
	private CEPRepository cepRepository;

	public List<CEP> findAllCEPs() {
		return cepRepository.findAll();
	}

	public CEP save(CEP cep) {
		List<CEP> listaDeCEPs = findAllCEPs();
		for (CEP c : listaDeCEPs) {
			if (c.getCep().equals(cep.getCep())) {
				return null;
			}
		}
		return cepRepository.save(cep);
	}

	public String consultarCEP(String endereco) {
		List<CEP> lista = cepRepository.findAll();
		for (CEP c : lista) {
			if (c.getEndereco().equals(endereco)) {
				return c.getCep();
			}
		}
		return null;
	}

	public String consultarEndereco(String cep) {
		List<CEP> lista = cepRepository.findAll();
		for (CEP c : lista) {
			if (c.getCep().equals(cep)) {
				return c.getEndereco();
			}
		}
		return null;
	}

	public boolean excluirCEP(String cep) {
		List<CEP> lista = cepRepository.findAll();
		CEP cepProcurado = null;
		boolean excluiu = false;

		for (CEP c : lista) {
			if (c.getCep().equals(cep)) {
				cepProcurado = c;
				excluiu = true;
			}
		}

		try {
			cepRepository.delete(cepProcurado);
		} catch (Exception e) {
			System.out.println("CEP não encontrado: " + e.getMessage());
		}

		return excluiu;
	}

}
