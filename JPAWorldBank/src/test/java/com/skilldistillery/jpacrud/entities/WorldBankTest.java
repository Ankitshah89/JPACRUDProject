package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.fail;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class WorldBankTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private WorldBank worldbank;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("WorldBankPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
	    em = emf.createEntityManager();
	    worldbank =em.find(WorldBank.class,1);
	}

	@AfterEach
	void tearDown() throws Exception {
		   em.close();
		    worldbank = null;
	}
	@Test
	@DisplayName ("test WorldBank mappings")
	void test() {
//		select title,description,release_year,rental_rate,
//		length,replacement_cost 
//		from film where id=1;
//		title=ACADEMY DINOSAUR, 
//	description=A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies,
//		releaseYear=1993-01-01, rentalRate=0.99,
//		replacementCost=20.99, length=86]
		
//		assertEquals("ACADEMY DINOSAUR",film.getTitle());
//		assertEquals("A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies",film.getDescription());
//		assertEquals("1993-01-01",film.getReleaseYear());
//		assertEquals("0.99",film.getRentalRate());
//		assertEquals(20.99,film.getReplacementCost());
//		assertEquals(86,film.getLength());
//		assertEquals(Rating.PG,film.getRating());
	}

}
