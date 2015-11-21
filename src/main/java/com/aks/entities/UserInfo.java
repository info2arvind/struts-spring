package com.aks.entities;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class UserInfo implements Serializable{
	/**
	 * serial version id
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	private int userId;
	private String Username;
	private String password;
	private boolean status;
	private Date doj;
	private String fullName;
	private String orgName;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public Date getDoj() {
		return doj;
	}
	public void setDoj(Date doj) {
		this.doj = doj;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	@Override
	public String toString() {
		return "UserInfo [userId=" + userId + ", Username=" + Username
				+ ", password=" + password + ", status=" + status + ", doj="
				+ doj + ", fullName=" + fullName + ", orgName=" + orgName + "]";
	}
	
	

}
