package com.misiontic.appcitas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.misiontic.appcitas.dao.MensajeDAO;
import com.misiontic.appcitas.entity.Mensajes;

@Service
public class MensajesServiceImpl implements MensajesService {

private MensajeDAO mensajesDAO;
	
	@Autowired
	public MensajesServiceImpl(@Qualifier("mensajeDAOimpl") MensajeDAO theMensajesDAO) {
		mensajesDAO = theMensajesDAO;
	}
	
	@Override
	@Transactional
	public List<Mensajes> findAll() {
		return mensajesDAO.findAll();
	}

	@Override
	@Transactional
	public Mensajes findById(int theId) {
		return mensajesDAO.findById(theId);
	}

	@Override
	@Transactional
	public void save(Mensajes theMensajes) {
		mensajesDAO.save(theMensajes);
	}

	@Override
	@Transactional
	public void deleteById(int theId) {
		mensajesDAO.deleteById(theId);
	}

}
