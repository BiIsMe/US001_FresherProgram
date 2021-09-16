package com.dxc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.dxc.entity.Client;

public interface ClientDao extends JpaRepository<Client, String> {

	@Query("select c from Client c where c.identitynumber=?1")
	Client findClientByIdNum(String idNum);
	
	@Query(value = "select * from Clients where identitynumber like ?1 and clientnumber not like ?2", nativeQuery = true)
	Client checkExistsBeside(String idNum, String clNum);
}
