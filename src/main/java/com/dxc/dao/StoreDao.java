package com.dxc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.dxc.entity.Store;

public interface StoreDao extends JpaRepository<Store, Integer> {

	@Query(value = "select top 1 id from store order by id asc", nativeQuery = true)
	Integer getClientNum();
	
}
