package com.serventity;

public class Userdao {
	private String name,email,age,desc,domain, comment, refer;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getDomain() {
		return domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getRefer() {
		return refer;
	}

	public void setRefer(String refer) {
		this.refer = refer;
	}

	public Userdao(String name, String email, String age, String desc, String domain, String comment, String refer) {
		super();
		this.name = name;
		this.email = email;
		this.age = age;
		this.desc = desc;
		this.domain = domain;
		this.comment = comment;
		this.refer = refer;
	}

	public Userdao() {
		super();
		// TODO Auto-generated constructor stub
	}
}
