package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.WorldBank;

public interface WorldBankDAO {
	WorldBank findById(int id);
	List<WorldBank> findAll();
	

}
