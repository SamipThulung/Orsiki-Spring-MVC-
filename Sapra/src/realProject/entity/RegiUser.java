package realProject.entity;

import java.math.BigInteger;


import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class RegiUser {

	    @NotNull
	    @Size(min=2,message="Khali chodu vayo yeslai")
	    private String firstName;




	    	private int UserId;
	    	
	    	@NotNull
	    	@Size(min=2,message="Khali na chodnu hoi yeslai")
	    	private String userName;
	    	
	        @NotNull
	        @Size(min=6,message="Minimum 6 ota letters/signs hunuparyo")
	    	private String identifier;
	    	
	        @NotNull
	        @Size(min=6,message="Minimum 6 ota letters/signs hunuparyo")
	    	private String confirmIdentifier;
	

	    	
	        @NotNull
	        @Size(min=2,message="Khali chodu vayo yeslai")
	    	private String lastName;
	    	
	        @NotNull
	        @Size(min=2,message="Khali chodu vayo yeslai")
	    	private String location;
	    	
	        
	        @NotNull
	        @Size(min=2,message="Khali chodu vayo yeslai")
	    	private String dob;
	    	
	        @NotNull
	    	private String gender;
	    	
	        @NotNull(message="Number Khali chodnu vayo")
	    	private BigInteger contactNumber;
	    	
	    	@NotNull
	    	@Size(min=2,message="Khali chodu vayo yeslai")
	    	private String email;
	    	

	
	    	private int type;
	    	
	  
	    	private String imagePath;
	    	

	    	private int status;
	    	
	    	

	    	public String getConfirmIdentifier() {
				return confirmIdentifier;
			}



			public void setConfirmIdentifier(String confirmIdentifier) {
				this.confirmIdentifier = confirmIdentifier;
			}



			public int getUserId() {
	    		return UserId;
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
	    	
	    	
	    	
	    	

	    


	    public String getFirstName() {
	        return this.firstName;
	    }

	    public void setFirstName(String name) {
	        this.firstName = name;
	    }



	    public String toString() { 
	        return "Person(Name: " + this.firstName + ", Age: "+ ")";
	    }
	}
	
	
	
	
	


