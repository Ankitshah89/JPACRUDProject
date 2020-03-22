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

	private List<WorldBank> countries;

	@Override
	public WorldBank findById(int id) {
		return em.find(WorldBank.class, id);
	}

	@Override
	public List<WorldBank> findAll() {
		String jpql = "select w from WorldBank w";
		return em.createQuery(jpql, WorldBank.class).getResultList();
	}

	@Override
	public WorldBank deleteCountry(int id) {
		WorldBank country = em.find(WorldBank.class, id);
		em.remove(country);
		em.flush();
//		boolean status = !em.contains(country);
		em.close();
		return country;
	}

	@Override
	public WorldBank createCountry(WorldBank country) {

		em.persist(country);
		em.flush();

		return country;
	}

	@Override
	public WorldBank updateCountry(WorldBank country) {
		WorldBank managed = em.find(WorldBank.class, country.getId());
		managed.setAccessToElectricity(country.getAccessToElectricity());
		managed.setEaseOfDoingBusiness(country.getEaseOfDoingBusiness());
		managed.setEducationalAttaintment(country.getEducationalAttaintment());
		managed.setExportsVsImports(country.getExportsVsImports());
		managed.setFertilityRate(country.getFertilityRate());
		managed.setFossilFuelConsumption(country.getFossilFuelConsumption());
		managed.setGdpGrowth(country.getGdpGrowth());
		managed.setGdpPerCapita(country.getGdpPerCapita());
		return managed;
	}

	@Override
	public WorldBank getNextCountryName(WorldBank currentCountry) {
		WorldBank w = null;
		int index = 0;

		for (; index < countries.size(); index++) {
			WorldBank wb = countries.get(index);
			if (wb.getCountry().equalsIgnoreCase(currentCountry.getCountry())) {
				index++;
				break;
			}

		}
		if (index == countries.size()) {
			index = 0;
		}
		w = countries.get(index);

		return w;
	}

	@Override
	public WorldBank getPreviousCountryName(WorldBank currentCountry) {
		int index = -1;
		WorldBank w = null;
		for (int i = 0; i < countries.size(); i++) {
			WorldBank wb = countries.get(i);
			if (wb.getCountry().equalsIgnoreCase(currentCountry.getCountry())) {
				index = i;
				break;
			}
		}
		index--;
		if (index == -1) {
			index = countries.size() - 1;
		}

		w = countries.get(index);
		return w;
	}

	@Override
	public List<WorldBank> findByName(String name) {
		String jpql = "select c from WorldBank c where c.country like :name";
		return em.createQuery(jpql,WorldBank.class).setParameter("name", "%"+name+"%").getResultList();
		
	}

}
