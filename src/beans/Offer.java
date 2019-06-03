package beans;

import java.time.LocalDate;

public class Offer {

	private Long id;

	private String description;

	private LocalDate expiryDate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public LocalDate getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(LocalDate expiryDate) {
		this.expiryDate = expiryDate;
	}

	@Override
	public String toString() {
		return "Offers [id=" + id + ", description=" + description + ", expiryDate=" + expiryDate + "]";
	}

}
