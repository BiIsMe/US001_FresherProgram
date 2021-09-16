package com.dxc.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Data
@AllArgsConstructor @NoArgsConstructor
@Entity @Table(name="Store")
public class Store implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY )
	private Integer id;

	@Temporal(TemporalType.DATE)
	private Date createdate = new Date();
}
