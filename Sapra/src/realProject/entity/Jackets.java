package realProject.entity;


	
	

import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.GenerationType;
	import javax.persistence.Id;

import javax.persistence.Table;

	@Entity
	@Table(name = "Jackets")
	public class Jackets implements MainObject{
		
		private final static String type="Jackets";
		private final static String cate="jackets";
		
		public String getCate(){
			return cate;
		}

		public String getType(){
			return type;
		}
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		@Column(name = "idJacket")
		private int id;
		
		@Column(name = "name")
		private String name;
		
		@Column(name = "rating")
		private int rating;
		
		
		@Column(name = "description")
		private String description;
		
		@Column(name="image1")
		private String image1;
		@Column(name="image2")
		private String image2;
		@Column(name="image3")
		private String image3;
		@Column(name="image4")
		private String image4;

		
		@Column(name="gender")
		private String gender;
		
		@Column(name="price")
		private String price;
		
		@Column(name="cp")
		private String cp;
		
		
		
		public String getCp() {
			return cp;
		}

		public void setCp(String cp) {
			this.cp = cp;
		}

		public String getPrice() {
			return price;
		}

		public void setName(String name) {
			this.name = name;
		}

		public void setPrice(String price) {
			this.price = price;
		}

		public String getPant_Name() {
			return name;
		}

		public void setPant_Name(String pant_Name) {
			name = pant_Name;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setShirt_Name(String pant_Name) {
			name = pant_Name;
		}

		public int getRating() {
			return rating;
		}

		public void setRating(int rating) {
			this.rating = rating;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public String getImage1() {
			return image1;
		}

		public void setImage1(String image) {
			this.image1 = image;
		}
		
		


		
		public String getImage2() {
			return image2;
		}

		public String getImage3() {
			return image3;
		}

		public String getImage4() {
			return image4;
		}

		public void setImage2(String image2) {
			this.image2 = image2;
		}

		public void setImage3(String image3) {
			this.image3 = image3;
		}

		public void setImage4(String image4) {
			this.image4 = image4;
		}

		@Override
		public String toString() {
			return "Customer [id=" + id + ", Stuname=" + name + ", phone Number=" + rating+ ", email=" + description + "]";
		}
		
		
		
		

	}



