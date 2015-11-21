package com.aks.services;

import java.util.List;

import com.aks.entities.UserInfo;

public interface IUserInfoServices {
	
	void saveUserInfo(UserInfo user);
	List<UserInfo> getUserInfo();

}
