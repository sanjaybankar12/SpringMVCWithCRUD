package com.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring.entity.UserEntity;
import com.spring.model.User;
import com.spring.repository.UserRepository;
import com.spring.service.UserService;

@Service(value = "myService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public void addUser(User user) {		
		UserEntity userEntity = populateUserEntity(user);		
		this.userRepository.save(userEntity);
	}
	
	/**
	 * This is used to map user model with User entity
	 * @param user it takes use paramter to map with user entity
	 * @return This method return UserEntity object
	 */
	private UserEntity populateUserEntity(User user) {		
		UserEntity userEntity = new UserEntity();
		if(user != null) {
			userEntity.setName(user.getName());
			userEntity.setGender(user.getGender());
		}		
		return userEntity;
	}
	
	@Override
	public List<UserEntity> getUsers() {
		List<UserEntity> users = this.userRepository.findAll();
			
		return users;
	}

}
