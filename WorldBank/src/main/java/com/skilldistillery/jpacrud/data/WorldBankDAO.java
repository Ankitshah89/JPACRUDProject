package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.WorldBank;

public interface WorldBankDAO {
	
	WorldBank findById(int id);
	List<WorldBank> findAll();
	WorldBank deleteCountry(int id);
	WorldBank createCountry(WorldBank country);
	WorldBank updateCountry(WorldBank country);
	
	
	
	WorldBank getNextCountryName(WorldBank nextcountry);
	WorldBank getPreviousCountryName(WorldBank previousCountrys);
	List <WorldBank> findByName(String name);
	
	
	

}
