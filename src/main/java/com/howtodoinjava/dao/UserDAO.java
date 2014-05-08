package com.howtodoinjava.dao;

import com.howtodoinjava.entity.UserEntity;

import java.util.List;

public interface UserDAO
{
    public void addUser(UserEntity user);
    public List<UserEntity> getAllUsers();
    public void deleteUser(Integer userId);
    public void setCurrentUser(UserEntity currentUser);
    public String getCurrentUserName();
}