package com.dxc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dxc.dao.MessageDao;
import com.dxc.dao.UserDao;
import com.dxc.entity.User;
import com.dxc.service.CookieService;
import com.dxc.service.ParamService;
import com.dxc.service.SessionService;

@Controller
public class LoginController {
	
	@Autowired
	ParamService prsv;
	@Autowired
	UserDao udao;
	@Autowired
	MessageDao mdao;
	@Autowired
	SessionService session;
	@Autowired
	CookieService cookie;
	
	@RequestMapping("abc.com")
	public String home() {
		return "client/home";
	}

	@GetMapping("abc.com/login")
	public String index(Model model) {
		String username = cookie.getCookie("username");
		String password = cookie.getCookie("password");
		model.addAttribute("username",username);
		model.addAttribute("password",password);
		return "login";
	}
	
	@PostMapping("abc.com/login")
	public String doLogin(Model model) {
		String username = prsv.getString("username", "");
		String password = prsv.getString("password", "");
		boolean remember = prsv.getBoolean("remember", false);
		User user = udao.findById(username).orElse(new User());
		model.addAttribute("password",password);
		model.addAttribute("username",username);
		if(username.length()==0) {			
			model.addAttribute("userMess", mdao.findContentById("lg01"));	
		}
		if(password.length()==0){			
			model.addAttribute("passMess", mdao.findContentById("lg02"));
		}
		if(user.getUsername()==null || !user.getPassword().equals(password) ) {
			if( username.length()>0 && password.length()>0)
				model.addAttribute("message",mdao.findContentById("lg03"));
		}
		else {
			int day = remember?1:0;
			cookie.creatCookie("username", username, day);
			cookie.creatCookie("password", password, day);
			session.set("username", username);
			model.addAttribute("message","Welcome "+username+", How are you today?");
			return "client/home";
		}
		
		return "login";
	}
}
