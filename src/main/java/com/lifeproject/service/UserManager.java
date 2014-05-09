package com.lifeproject.service;

import com.lifeproject.entity.UserEntity;

import java.util.List;

public interface UserManager {
	public void addUser(UserEntity user);
    public List<UserEntity> getAllUsers();
    public void deleteUser(Integer userId);
    public String getCurrentUserName();
    public void setCurrentUser(UserEntity user);
    public String getCurrentUserRole();
}
