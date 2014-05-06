package com.howtodoinjava.service;

import com.howtodoinjava.entity.UserEntity;

import java.util.List;

public interface UserManager {
	public void addUser(UserEntity user);
    public List<UserEntity> getAllUsers();
    public void deleteUser(Integer userId);
}
