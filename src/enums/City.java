package enums;

public enum City {

	LUCKNOW("Lucknow"), KANPUR("Kanpur");

	private String name;

	private City(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return name;
	}
}