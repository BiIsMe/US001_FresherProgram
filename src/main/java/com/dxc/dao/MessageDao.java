package com.dxc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.dxc.entity.MessageE;

public interface MessageDao extends JpaRepository<MessageE, String> {

	@Query("select m.content from MessageE m where m.id=?1")
	String findContentById(String id);
	
}
