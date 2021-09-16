package com.dxc.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dxc.dao.ClientDao;
import com.dxc.dao.CountryDao;
import com.dxc.dao.GenderDao;
import com.dxc.dao.MaryStatusDao;
import com.dxc.dao.MessageDao;
import com.dxc.dao.StoreDao;
import com.dxc.entity.Client;
import com.dxc.entity.Country;
import com.dxc.entity.Gender;
import com.dxc.entity.MaritalStatus;
import com.dxc.entity.Store;
import com.dxc.service.ParamService;
import com.dxc.service.SessionService;

@Controller
public class ClientController {
	@Autowired
	ParamService prsv;
	@Autowired
	ClientDao cdao;
	@Autowired
	StoreDao sdao;
	@Autowired
	GenderDao gdao;
	@Autowired
	CountryDao ctdao;
	@Autowired
	MaryStatusDao msdao;
	@Autowired
	MessageDao medao;
	@Autowired
	SessionService session;

	@RequestMapping("abc.com/client")
	public String clientMain(Model model) {
		return "client/main";
	}
	
	@PostMapping("abc.com/client")
	public String doAction(Model model) throws ParseException {
		String key = prsv.getString("actions","");
		String finding = prsv.getString("finding", "");
		Client temp = cdao.findById(finding).orElse(new Client());
		
		if(key.equals("a")) {			
			Client client = new Client();
			int id = sdao.getClientNum();
			String clientNum = String.format("%08d", id);
			client.setClientnumber(clientNum);			
			sdao.deleteById(id);
			sdao.save(new Store());
			
			model.addAttribute("client",client);
			return "client/create";
		}
		
		if(finding.length()==0) {
			model.addAttribute("message","Please check all the form");
			model.addAttribute("findMess","Please input the Client Number before modify or inquire request");
			return "client/main";
		}
		else {
			if(temp.getIdentitynumber() == null) {
				model.addAttribute("message","CANNOT FIND THE CLIENT");
				return "client/main";
			}
			else {
				if(key.equals("b")){
					model.addAttribute("message","Found");
					model.addAttribute("client",temp);
					return "client/modify";
				}
				else {
					model.addAttribute("client",temp);
					model.addAttribute("message","Found");
					return "client/inquire";
				}					
			}
		}
			
	}
	
	
	//create
	@RequestMapping(value = "abc.com/create", params = "btnCreate")
	public String create(Model model, @Validated @ModelAttribute("client") Client client, BindingResult errors) {
		Client temp = cdao.findClientByIdNum(client.getIdentitynumber());
		if(temp != null) {
			model.addAttribute("message","Identity Number already exists");
			model.addAttribute("clientMess","Please change the ID Number - it already exists");
		}
		
		try {
			if(errors.hasErrors()) {
				model.addAttribute("message","please check all the form");
			}
			else {				
				if(temp == null) {
					cdao.save(client);
					model.addAttribute("message","success");
					Client c = cdao.findById(client.getClientnumber()).get();
					model.addAttribute("client",c);
					return "client/inquire";
				}				
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message","fail");
		}
		return "client/create";
	}
	
	@RequestMapping(value = "abc.com/create", params = "btnBack")
	public String backCreate() {
		return "client/main";
	}
	
	
	//modify
	@RequestMapping(value = "abc.com/modify", params = "btnBack")
	public String backModify() {
		return "client/main";
	}
	
	@RequestMapping(value = "abc.com/modify", params = "btnModify")
	public String backModify(Model model, @Validated @ModelAttribute("client") Client client, BindingResult errors ) {
		Client temp = cdao.checkExistsBeside(client.getIdentitynumber(), client.getClientnumber());
		if(temp != null) {
			model.addAttribute("message","Identity Number already exists");
			model.addAttribute("clientMess","Please change the ID Number - it already exists");
		}
		
		try {
			if(errors.hasErrors()) {
				model.addAttribute("message","please check all the form");
			}
			else {				
				if(temp == null) {
					cdao.save(client);
					model.addAttribute("message","success");
					Client c = cdao.findById(client.getClientnumber()).get();
					model.addAttribute("client",c);
					return "client/inquire";
				}				
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message","fail");
		}
		return "client/modify";
	}
	
	
	//inquire
	@RequestMapping(value = "abc.com/inquire", params = "btnBack")
	public String backInquire() {
		return "client/main";
	}
	
	
	
	
	//modelAttributes
	@ModelAttribute("genders")
	public Map<String, String> getGender(){
		Map<String, String> map = new HashMap<String, String>();
		List<Gender> list = gdao.findAll();
		for(Gender g : list) {
			map.put(g.getCode(), g.getValue());
		}
		return map;
	}
	
	@ModelAttribute("countries")
	public Map<String, String> getCountries(){
		Map<String, String> map = new HashMap<String, String>();
		List<Country> list = ctdao.findAll();
		for(Country c : list) {
			map.put(c.getCode(), c.getValue());
		}
		return map;
	}
	
	@ModelAttribute("maritalstatus")
	public Map<String, String> getMaryStatus(){
		Map<String, String> map = new HashMap<String, String>();
		List<MaritalStatus> list = msdao.findAll();
		for(MaritalStatus m : list) {
			map.put(m.getCode(), m.getValue());
		}
		return map;
	}
	
}
