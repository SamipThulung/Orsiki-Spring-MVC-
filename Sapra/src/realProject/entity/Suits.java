package realProject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Suits")
public class Suits {

	private final static String type="Suits";
	private final static String cate="Suits";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idSuits")
	private int id;
	
	@Column(name = "name")
	private String name;
	
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
	
	@Column(name="price")
	private String price;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="colors")
	private String colors;

	public static String getType() {
		return type;
	}

	public static String getCate() {
		return cate;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getDescription() {
		return description;
	}

	public String getImage1() {
		return image1;
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

	public String getPrice() {
		return price;
	}

	public String getGender() {
		return gender;
	}

	public String getColors() {
		return colors;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
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

	public void setPrice(String price) {
		this.price = price;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setColors(String colors) {
		this.colors = colors;
	}
	
	
}
