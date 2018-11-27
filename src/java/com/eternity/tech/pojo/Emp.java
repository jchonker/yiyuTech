package com.eternity.tech.pojo;

import java.util.Date;

public class Emp {

	private Integer id;
	
	private String name;
	
	private Integer empid;
	
	private Integer salary;
	
	private String photo;
	
	private String department;
	
	private String sex;
	
	private String school;
	
	private Integer age;
	
	private String married;
	
	private String blood;
	
	private String education;
	
	private double height;
	
	private double weight;
	
	private Date birthday;
	
	private String anmeldung;
	
	private String idcart;
	
	private String health;
	
	private String politics;
	
	private String address_idcart;
	
	private String mobile;
	
	private String mailbox;
	
	private String address_now;
	
	private String nation;
	
	private String zip_code;
	
	private String speciality;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getEmpid() {
		return empid;
	}

	public void setEmpid(Integer empid) {
		this.empid = empid;
	}

	public Integer getSalary() {
		return salary;
	}

	public void setSalary(Integer salary) {
		this.salary = salary;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getMarried() {
		return married;
	}

	public void setMarried(String married) {
		this.married = married;
	}

	public String getBlood() {
		return blood;
	}

	public void setBlood(String blood) {
		this.blood = blood;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getAnmeldung() {
		return anmeldung;
	}

	public void setAnmeldung(String anmeldung) {
		this.anmeldung = anmeldung;
	}

	public String getIdcart() {
		return idcart;
	}

	public void setIdcart(String idcart) {
		this.idcart = idcart;
	}

	public String getHealth() {
		return health;
	}

	public void setHealth(String health) {
		this.health = health;
	}

	public String getPolitics() {
		return politics;
	}

	public void setPolitics(String politics) {
		this.politics = politics;
	}

	public String getAddress_idcart() {
		return address_idcart;
	}

	public void setAddress_idcart(String address_idcart) {
		this.address_idcart = address_idcart;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getMailbox() {
		return mailbox;
	}

	public void setMailbox(String mailbox) {
		this.mailbox = mailbox;
	}

	public String getAddress_now() {
		return address_now;
	}

	public void setAddress_now(String address_now) {
		this.address_now = address_now;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getZip_code() {
		return zip_code;
	}

	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public Emp() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Emp(String name, Integer empid, Integer salary, String photo, String department, String sex, String school,
			Integer age, String married, String blood, String education, double height, double weight, Date birthday,
			String anmeldung, String idcart, String health, String politics, String address_idcart, String mobile,
			String mailbox, String address_now, String nation, String zip_code, String speciality) {
		super();
		this.name = name;
		this.empid = empid;
		this.salary = salary;
		this.photo = photo;
		this.department = department;
		this.sex = sex;
		this.school = school;
		this.age = age;
		this.married = married;
		this.blood = blood;
		this.education = education;
		this.height = height;
		this.weight = weight;
		this.birthday = birthday;
		this.anmeldung = anmeldung;
		this.idcart = idcart;
		this.health = health;
		this.politics = politics;
		this.address_idcart = address_idcart;
		this.mobile = mobile;
		this.mailbox = mailbox;
		this.address_now = address_now;
		this.nation = nation;
		this.zip_code = zip_code;
		this.speciality = speciality;
	}

	@Override
	public String toString() {
		return "Emp [id=" + id + ", name=" + name + ", empid=" + empid + ", salary=" + salary + ", photo=" + photo
				+ ", department=" + department + ", sex=" + sex + ", school=" + school + ", age=" + age + ", married="
				+ married + ", blood=" + blood + ", education=" + education + ", height=" + height + ", weight="
				+ weight + ", birthday=" + birthday + ", anmeldung=" + anmeldung + ", idcart=" + idcart + ", health="
				+ health + ", politics=" + politics + ", address_idcart=" + address_idcart + ", mobile=" + mobile
				+ ", mailbox=" + mailbox + ", address_now=" + address_now + ", nation=" + nation + ", zip_code="
				+ zip_code + ", speciality=" + speciality + "]";
	}
	
	
	
}
