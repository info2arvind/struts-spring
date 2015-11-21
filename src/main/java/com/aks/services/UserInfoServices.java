package com.aks.services;

import java.util.List;

import com.aks.dao.UserInfoDao;
import com.aks.entities.UserInfo;

public class UserInfoServices implements IUserInfoServices{
    
	private UserInfoDao userInfoDao;
 
	public UserInfoDao getUserInfoDao() {
		return userInfoDao;
	}

	public void setUserInfoDao(UserInfoDao userInfoDao) {
		this.userInfoDao = userInfoDao;
	}

	@Override
	public void saveUserInfo(UserInfo user) {
		userInfoDao.saveUserInfo(user);
		
	}

	@Override
	public List<UserInfo> getUserInfo() {
		return userInfoDao.getUserInfo();
	}

}
