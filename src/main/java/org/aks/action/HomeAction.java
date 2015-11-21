package org.aks.action;

import com.aks.session.AbstractSession;

public class HomeAction extends AbstractSession{
	
	/**
	 * serial version
	 */
	private static final long serialVersionUID = 1L;

	public String logout(){
		if(getSession().containsKey("uname")){
			getSession().remove("uname");
			getSession().remove("context");
		}else{
			System.out.println("getSession value not found");
		}
		
		
		return "success";
	}

}
