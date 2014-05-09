package com.lifeproject.service;

import com.lifeproject.dao.UserDAO;
import com.lifeproject.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserManagerImpl implements UserManager {
	
	@Autowired
    private UserDAO userDAO;

    @Override
    @Transactional
    public String getCurrentUserName()
    {
        return userDAO.getCurrentUserName();
    }

    @Override
    @Transactional
    public String getCurrentUserRole()
    {
        return userDAO.getCurrentUserRole();
    }

    @Override
    @Transactional
    public void setCurrentUser(UserEntity user)
    {
         userDAO.setCurrentUser(user);
    }

	@Override
	@Transactional
	public void addUser(UserEntity user) {
		userDAO.addUser(user);
	}

	@Override
	@Transactional
	public List<UserEntity> getAllUsers() {
        return userDAO.getAllUsers();
	}

	@Override
	@Transactional
	public void deleteUser(Integer userId) {
		userDAO.deleteUser(userId);
	}

}
