package com.howtodoinjava.dao;

import com.howtodoinjava.entity.EmployeeEntity;
import com.howtodoinjava.entity.UserEntity;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDAO  {

	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public void addUser(UserEntity user) {
		this.sessionFactory.getCurrentSession().save(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<UserEntity> getAllUsers() {
		return this.sessionFactory.getCurrentSession().createQuery("from UserEntity").list();
	}

	@Override
	public void deleteUser(Integer userId) {
		UserEntity user = (UserEntity) sessionFactory.getCurrentSession().load(
				UserEntity.class, userId);
        if (null != user) {
        	this.sessionFactory.getCurrentSession().delete(user);
        }
	}
	
	

}
