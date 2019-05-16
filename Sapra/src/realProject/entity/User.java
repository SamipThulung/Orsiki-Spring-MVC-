package realProject.entity;

import java.math.BigInteger;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;


@Entity
@Table(name = "User")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "UserId")
	private int UserId;
	
	@Column(name = "userName")
	private String userName;
	
	@Column(name = "identifier")
	private String identifier;
	
	@Column(name = "firstName")
	private String firstName;
	
	@Column(name = "lastName")
	private String lastName;
	
	@Column(name = "location")
	private String location;
	
	@Column(name = "dob")
	private String dob;
	
	@Column(name = "gender")
	private String gender;
	
	@Column(name = "contactNumber")
	private BigInteger contactNumber;
	
	@Column(name = "email")
	private String email;
	
	//type is admin 0, customer 1 and employee 2
	@Column(name = "type")
	private int type;
	
	@Column(name = "imagePath")
	private String imagePath;
	
	//status is 0 for inactive and 1 for active
	@Column(name = "status")
	private int status;
	
	@Column(name = "lolly")
	private String lolly;

	


	public String getLolly() {
		return lolly;
	}

	public void setLolly(String lolly) {
		this.lolly = lolly;
	}

	public int getUserId() {
		return UserId;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getLocation() {
		return location;
	}

	public String getDob() {
		return dob;
	}

	public String getGender() {
		return gender;
	}

	public BigInteger getContactNumber() {
		return contactNumber;
	}

	public String getEmail() {
		return email;
	}

	public int getType() {
		return type;
	}

	public String getImagePath() {
		return imagePath;
	}

	public int getStatus() {
		return status;
	}

	public void setUserId(int userId) {
		UserId = userId;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setContactNumber(BigInteger contactNumber) {
		this.contactNumber = contactNumber;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setType(int type) {
		this.type = type;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getUserName() {
		return userName;
	}

	public String getIdentifier() {
		return identifier;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setIdentifier(String password) {
		identifier = password;
	}
	
	
	
	

}
