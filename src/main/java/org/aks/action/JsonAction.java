package org.aks.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.aks.entities.UserInfo;
import com.aks.services.IUserInfoServices;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;

public class JsonAction extends ActionSupport{
	
	private IUserInfoServices iuserInfoService;

	public IUserInfoServices getIuserInfoService() {
		return iuserInfoService;
	}


	public void setIuserInfoService(IUserInfoServices iuserInfoService) {
		this.iuserInfoService = iuserInfoService;
	}

    private UserInfo user;
    
    
	public UserInfo getUser() {
		return user;
	}


	public void setUser(UserInfo user) {
		this.user = user;
	}

	/*private List<UserInfo> list = new ArrayList<UserInfo>();

	
	public List<UserInfo> getList() {
		return list;
	}


	public void setList(List<UserInfo> list) {
		this.list = list;
	}
*/
	private String jsonString;
	public String getJsonString() {
        return jsonString;
    }

    public void setJsonString(String jsonString) {
        this.jsonString = jsonString;
    }


	public String execute() throws IOException{

		user.setFullName("arvind");
		user.setPassword("arvind");
		user.setOrgName("chetu");
		user.setUserId(101);
		user.setUsername("aks");
		//Gson gson = new Gson();
		//jsonString = gson.toJson(iuserInfoService.getUserInfo());
	    //list.add(user); //iuserInfoService.getUserInfo();
	   /* for(UserInfo u : list){
			System.out.println(u);
		}*/
//		HttpServletResponse response = ServletActionContext.getResponse();
//
//	      response.setContentType("application/json");
//	      response.getWriter().write(jsonString );


		return "success";
	}

}
