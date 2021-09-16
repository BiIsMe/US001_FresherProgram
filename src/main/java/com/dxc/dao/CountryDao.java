package com.dxc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dxc.entity.Country;


public interface CountryDao extends JpaRepository<Country, String>{

}
