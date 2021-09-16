package com.dxc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dxc.entity.User;

public interface UserDao extends JpaRepository<User, String> {

}
