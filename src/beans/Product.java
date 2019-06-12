package beans;

import java.io.Serializable;

import db.repo.OfferRepository;
import db.repo.UserRepository;

public class Product implements Serializable {

	private Long id;

	private String category;
	private String description;
	private float price;
	private String title;
	private String image1;
	private String image2;
	private String image3;
	private String image4;
	private String image5;
	private long userId;

	private Offer offer;

	public long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImage1() {
		return image1;
	}

	public void setImage1(String image1) {
		this.image1 = image1;
	}

	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public String getImage3() {
		return image3;
	}

	public void setImage3(String image3) {
		this.image3 = image3;
	}

	public String getImage4() {
		return image4;
	}

	public void setImage4(String image4) {
		this.image4 = image4;
	}

	public String getImage5() {
		return image5;
	}

	public void setImage5(String image5) {
		this.image5 = image5;
	}

	public User getUser() {
		return UserRepository.findUser(this.userId);
	}

	public String[] getImages() {
		return new String[] { image1, image2, image3, image4, image5 };
	}

	public Offer getOffer() {

		return this.offer = OfferRepository.findOfferByProductId(id);
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", category=" + category + ", description=" + description + ", price=" + price
				+ ", title=" + title + ", image1=" + image1 + ", image2=" + image2 + ", image3=" + image3 + ", image4="
				+ image4 + ", image5=" + image5 + ", userId=" + userId + "]";
	}

}
