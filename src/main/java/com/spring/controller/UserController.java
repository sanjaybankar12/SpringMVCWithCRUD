package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.entity.UserEntity;
import com.spring.literals.UserLiterals;
import com.spring.model.User;
import com.spring.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	@Qualifier("myService")
	private UserService userService;

	@PostMapping(value ="/save")
	public ModelAndView addUser(User user) {
		
		this.userService.addUser(user);
		
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("msg", "Welcome to Home Page");
		mv.addObject(UserLiterals.USER_REG_MSG, UserLiterals.REG_SUCCESS_MSG);
		return mv;
	}
	
	@GetMapping()
	public ModelAndView getUsers() {
		
		List<UserEntity> users = this.userService.getUsers();
		
		ModelAndView mv = new ModelAndView("user");
		mv.addObject("users",users);
		return mv;
	}
	
	@ResponseBody
	@GetMapping(value = "/all",produces = MediaType.APPLICATION_JSON_VALUE)
	public List<UserEntity> getUsersForRest() {
		
		List<UserEntity> users = this.userService.getUsers();		
		return users;
	}
	
}
