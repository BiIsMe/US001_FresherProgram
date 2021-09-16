package com.dxc.controller;

import org.springframework.beans.factory.annotation.Autowired;

import com.dxc.dao.ClientDao;
import com.dxc.entity.Client;

public class test {
	@Autowired
	static ClientDao cdao;

	public static void main(String[] args) {
		Client client = cdao.findById("00000001").orElse(new Client());
		System.out.println(client.getGender().getValue());

	}

}
