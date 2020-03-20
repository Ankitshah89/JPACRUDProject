package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.WorldBank;

@Service
@Transactional
public class WorldBankDAOImpl implements WorldBankDAO {
	
	@PersistenceContext
	EntityManager em;

	@Override
	public WorldBank findById(int id) {
		return em.find(WorldBank.class,id);
	}

	@Override
	public List<WorldBank> findAll() {
		String jpql = "select w from WorldBank w";
		return em.createQuery(jpql,WorldBank.class).getResultList();
	}


}
