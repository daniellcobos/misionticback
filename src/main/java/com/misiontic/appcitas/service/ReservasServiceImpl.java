package com.misiontic.appcitas.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.misiontic.appcitas.dao.ReservasDAO;
import com.misiontic.appcitas.entity.Reservas;

@Service
public class ReservasServiceImpl implements ReservasService {

private ReservasDAO reservasDAO;
	
	@Autowired
	public ReservasServiceImpl(@Qualifier("reservasDAOimpl") ReservasDAO theReservasDAO) {
		reservasDAO = theReservasDAO;
	}
	
	@Override
	@Transactional
	public List<Reservas> findAll() {
		return reservasDAO.findAll();
	}

	@Override
	@Transactional
	public Reservas findById(int theId) {
		return reservasDAO.findById(theId);
	}

	@Override
	@Transactional
	public void save(Reservas theReservas) {
		reservasDAO.save(theReservas);
	}

	@Override
	@Transactional
	public void deleteById(int theId) {
		reservasDAO.deleteById(theId);
	}

}
