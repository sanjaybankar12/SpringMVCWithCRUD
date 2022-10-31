package com.spring.service;

import java.util.List;

import com.spring.entity.UserEntity;
import com.spring.model.User;

public interface UserService {

	void addUser(User user);

	List<UserEntity> getUsers();
}
