package com.aks.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.aks.entities.UserInfo;

@Transactional
public class UserInfoDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public void saveUserInfo(UserInfo user){
		Session session = getSessionFactory().getCurrentSession();
		System.out.println(session);
		System.out.println(user);
		session.save(user);
	}
	
	public List<UserInfo> getUserInfo(){
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(UserInfo.class);
		List<UserInfo> userInfo = criteria.list();
		return userInfo;
	}

}
