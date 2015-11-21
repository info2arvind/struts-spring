package com.aks.session;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class AbstractSession extends ActionSupport implements SessionAware{
    
	/**
	 * serial version
	 */
	private static final long serialVersionUID = 1L;
	
	private Map<String, Object> session;
	@Override
	public void setSession(Map<String, Object> session) {
       this.session=session;
		
	}
	public Map<String, Object> getSession() {
		return session;
	}

}
