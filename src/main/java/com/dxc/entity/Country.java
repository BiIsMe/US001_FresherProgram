package com.dxc.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Data
@AllArgsConstructor @NoArgsConstructor
@Entity @Table(name="Country")
public class Country implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	private String code;
	private String value;
	
	@JsonIgnore
	@OneToMany(mappedBy = "country")
	private List<Client> clients;
	
}
