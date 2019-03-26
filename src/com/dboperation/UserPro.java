package com.dboperation;

import lombok.AllArgsConstructor;

@AllArgsConstructor
public class UserPro {

	private String uname;
	private String upass;

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpass() {
		return upass;
	}

	public void setUpass(String upass) {
		this.upass = upass;
	}

}
