package org.aks.action;

import java.util.Date;
import java.util.List;

import org.aks.model.UserData;

import com.aks.entities.UserInfo;
import com.aks.services.IUserInfoServices;
import com.aks.session.AbstractSession;
import com.opensymphony.xwork2.ModelDriven;

public class WelcomeAction extends AbstractSession{
	
	private UserData user;
	
	private IUserInfoServices iuserInfoService;

	public UserData getUser() {
		return user;
	}

	public void setUser(UserData user) {
		this.user = user;
	}

	public IUserInfoServices getIuserInfoService() {
		return iuserInfoService;
	}

	public void setIuserInfoService(IUserInfoServices iuserInfoService) {
		this.iuserInfoService = iuserInfoService;
	}



	/**
	 * serial version
	 */
	private static final long serialVersionUID = 1L;

	public String execute(){
		System.out.println(getUser().getUname());
		 getSession().put("uname",getUser().getUname());
		 getSession().put("context", new Date());
		 UserInfo userInfo = new UserInfo();
		 userInfo.setFullName("Arvind Sharma");
		 userInfo.setOrgName("Chetu");
		 userInfo.setPassword("arvind");
		 userInfo.setStatus(true);
		 userInfo.setDoj(new java.sql.Date(new java.util.Date().getTime()));
		 userInfo.setUserId(102);
		 userInfo.setUsername("arvind");
		 
	//	 iuserInfoService.saveUserInfo(userInfo);
	/*	List<UserInfo> user = iuserInfoService.getUserInfo(); 
		for(UserInfo u : user){
			System.out.println(u);
		}*/

		return "success";
	}
	
	public String ajaxResult(){
		String name = user.getEcho();
	    addActionMessage("welcome "+name+"!");
		return "success";
	}

}
