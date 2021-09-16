package com.dxc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dxc.entity.Gender;

public interface GenderDao extends JpaRepository<Gender, String>{

}
