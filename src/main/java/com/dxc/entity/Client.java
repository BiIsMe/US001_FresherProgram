package com.dxc.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Future;
import javax.validation.constraints.Past;
import javax.validation.constraints.PastOrPresent;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Data
@AllArgsConstructor @NoArgsConstructor
@Entity @Table(name="Clients")
public class Client implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String clientnumber;
	
	@NotBlank(message="This is mandatory field")
	private String firstname;
	
	@NotBlank(message="This is mandatory field")
	private String lastname;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@Past(message="not larger than today")
	private Date dob = new Date();
	
	@NotBlank(message="This is mandatory field")
	private String identitynumber;
	
	@NotBlank(message="This is mandatory field")
	private String address;
	
	@ManyToOne
	@JoinColumn(name = "gender")
	private Gender gender;
	
	@ManyToOne
	@JoinColumn(name = "country")
	private Country country;
	
	@ManyToOne
	@JoinColumn(name = "maritalstatus")
	private MaritalStatus maritalstatus;
}
