package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="development_indicators")
public class WorldBank {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String country;
	
	private double latitude;
	private double longitude;
	
	
	@Column(name="access_to_electricity")
	private Double accessToElectricity;
	
	@Column(name="ease_of_doing_business")
	private Double easeOfDoingBusiness;
	
	@Column(name="educational_attaintment")
	private Double educationalAttaintment;
	
	
	@Column(name="external_balance_on_good_and_services")
	private Double exportsVsImports;
	
	@Column(name="fertility_rate")
	private Double fertilityRate;
	
	@Column(name="fossil_fuel_consumption")
	private Double fossilFuelConsumption;
	
	@Column(name="GDP_growth")
	private Double gdpGrowth;
	
	@Column(name="GDP_per_capita")
	private Double gdpPerCapita;

	public WorldBank(int id, String country, double latitude, double longitude, Double accessToElectricity,
			Double easeOfDoingBusiness, Double educationalAttaintment, Double exportsVsImports, Double fertilityRate,
			Double fossilFuelConsumption, Double gdpGrowth, Double gdpPerCapita) {
		super();
		this.id = id;
		this.country = country;
		this.latitude = latitude;
		this.longitude = longitude;
		this.accessToElectricity = accessToElectricity;
		this.easeOfDoingBusiness = easeOfDoingBusiness;
		this.educationalAttaintment = educationalAttaintment;
		this.exportsVsImports = exportsVsImports;
		this.fertilityRate = fertilityRate;
		this.fossilFuelConsumption = fossilFuelConsumption;
		this.gdpGrowth = gdpGrowth;
		this.gdpPerCapita = gdpPerCapita;
	}

	public WorldBank() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public Double getAccessToElectricity() {
		return accessToElectricity;
	}

	public void setAccessToElectricity(Double accessToElectricity) {
		this.accessToElectricity = accessToElectricity;
	}

	public Double getEaseOfDoingBusiness() {
		return easeOfDoingBusiness;
	}

	public void setEaseOfDoingBusiness(Double easeOfDoingBusiness) {
		this.easeOfDoingBusiness = easeOfDoingBusiness;
	}

	public Double getEducationalAttaintment() {
		return educationalAttaintment;
	}

	public void setEducationalAttaintment(Double educationalAttaintment) {
		this.educationalAttaintment = educationalAttaintment;
	}

	public Double getExportsVsImports() {
		return exportsVsImports;
	}

	public void setExportsVsImports(Double exportsVsImports) {
		this.exportsVsImports = exportsVsImports;
	}

	public Double getFertilityRate() {
		return fertilityRate;
	}

	public void setFertilityRate(Double fertilityRate) {
		this.fertilityRate = fertilityRate;
	}

	public Double getFossilFuelConsumption() {
		return fossilFuelConsumption;
	}

	public void setFossilFuelConsumption(Double fossilFuelConsumption) {
		this.fossilFuelConsumption = fossilFuelConsumption;
	}

	public Double getGdpGrowth() {
		return gdpGrowth;
	}

	public void setGdpGrowth(Double gdpGrowth) {
		this.gdpGrowth = gdpGrowth;
	}

	public Double getGdpPerCapita() {
		return gdpPerCapita;
	}

	public void setGdpPerCapita(Double gdpPerCapita) {
		this.gdpPerCapita = gdpPerCapita;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("WorldBank [id=").append(id).append(", country=").append(country).append(", latitude=")
				.append(latitude).append(", longitude=").append(longitude).append(", accessToElectricity=")
				.append(accessToElectricity).append(", easeOfDoingBusiness=").append(easeOfDoingBusiness)
				.append(", educationalAttaintment=").append(educationalAttaintment).append(", exportsVsImports=")
				.append(exportsVsImports).append(", fertilityRate=").append(fertilityRate)
				.append(", fossilFuelConsumption=").append(fossilFuelConsumption).append(", gdpGrowth=")
				.append(gdpGrowth).append(", gdpPerCapita=").append(gdpPerCapita).append("]");
		return builder.toString();
	}
	
	
	
	



}
