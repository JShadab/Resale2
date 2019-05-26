package db.repo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.Offers;
import beans.Product;
import beans.User;
import db.DBConnection;

public class ProductRepository {

	public static Product findProduct(long id) {

		String select = "SELECT * FROM products WHERE id=?";

		Product product = new Product();

		try (Connection connection = DBConnection.getConnection();) {

			PreparedStatement ps = connection.prepareStatement(select);

			ps.setLong(1, id);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				product.setId(rs.getLong("id"));
				product.setCategory(rs.getString("category"));
				product.setTitle(rs.getString("title"));
				product.setDescription(rs.getString("description"));

				product.setImage1(rs.getString("image1"));
				product.setImage2(rs.getString("image2"));
				product.setImage3(rs.getString("image3"));
				product.setImage4(rs.getString("image4"));
				product.setImage5(rs.getString("image5"));

				product.setPrice(rs.getFloat("price"));

				Offers offer = OffersRepository.findOffers(rs.getLong("offer_id"));
				product.setOffer(offer);

				User user = UserRepository.findUser(rs.getLong("user_id"));
				product.setUser(user);

			}

			rs.close();

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return product;

	}

	public static List<Product> getAllProduct() {

		String select = "SELECT * FROM products";

		List<Product> products = new ArrayList<Product>();

		try (Connection connection = DBConnection.getConnection();) {

			PreparedStatement ps = connection.prepareStatement(select);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Product product = new Product();

				product.setId(rs.getLong("id"));
				product.setCategory(rs.getString("category"));
				product.setTitle(rs.getString("title"));
				product.setDescription(rs.getString("description"));

				product.setImage1(rs.getString("image1"));
				product.setImage2(rs.getString("image2"));
				product.setImage3(rs.getString("image3"));
				product.setImage4(rs.getString("image4"));
				product.setImage5(rs.getString("image5"));

				product.setPrice(rs.getFloat("price"));

				Offers offer = OffersRepository.findOffers(rs.getLong("offer_id"));
				product.setOffer(offer);

				User user = UserRepository.findUser(rs.getLong("user_id"));
				product.setUser(user);

				products.add(product);

			}

			rs.close();

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return products;

	}

	public static List<Product> getAllProduct(String category) {

		String select = "SELECT * FROM products WHERE category=?";

		List<Product> products = new ArrayList<Product>();

		try (Connection connection = DBConnection.getConnection();) {

			PreparedStatement ps = connection.prepareStatement(select);

			ps.setString(1, category);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Product product = new Product();

				product.setCategory(rs.getString("category"));
				product.setDescription(rs.getString("description"));
				product.setId(rs.getLong("id"));

				product.setImage1(rs.getString("image1"));
				product.setImage2(rs.getString("image2"));
				product.setImage3(rs.getString("image3"));
				product.setImage4(rs.getString("image4"));
				product.setImage5(rs.getString("image5"));

				product.setTitle(rs.getString("title"));
				product.setPrice(rs.getFloat("price"));

				Offers offer = OffersRepository.findOffers(rs.getLong("offer_id"));
				product.setOffer(offer);

				User user = UserRepository.findUser(rs.getLong("user_id"));
				product.setUser(user);

				products.add(product);

			}

			rs.close();

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return products;
	}

	public static List<Product> getAllProduct(User user) {

		String select = "SELECT * FROM products WHERE user_id=?";

		List<Product> products = new ArrayList<Product>();

		try (Connection connection = DBConnection.getConnection();) {

			PreparedStatement ps = connection.prepareStatement(select);

			ps.setLong(1, user.getId());

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Product product = new Product();

				product.setCategory(rs.getString("category"));
				product.setDescription(rs.getString("description"));
				product.setId(rs.getLong("id"));

				product.setImage1(rs.getString("image1"));
				product.setImage2(rs.getString("image2"));
				product.setImage3(rs.getString("image3"));
				product.setImage4(rs.getString("image4"));
				product.setImage5(rs.getString("image5"));

				product.setTitle(rs.getString("title"));
				product.setPrice(rs.getFloat("price"));

				Offers offer = OffersRepository.findOffers(rs.getLong("offer_id"));
				product.setOffer(offer);

				product.setUser(user);

				products.add(product);

			}

			rs.close();

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return products;
	}

	public static boolean createProduct(Product product) {

		boolean isSucces = false;

		String insert = "INSERT INTO products (category, title, description, image1, image2, image3, image4, image5, price, offer_id, user_id) values (?,?,?,?,?,?,?,?,?,?,?)";

		try (Connection connection = DBConnection.getConnection();) {

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, product.getCategory());
			ps.setString(2, product.getTitle());
			ps.setString(3, product.getDescription());

			ps.setString(4, product.getImage1());
			ps.setString(5, product.getImage2());
			ps.setString(6, product.getImage3());
			ps.setString(7, product.getImage4());
			ps.setString(8, product.getImage5());

			ps.setFloat(9, product.getPrice());
			ps.setLong(10, product.getOffer().getId());
			ps.setLong(11, product.getUser().getId());

			ps.executeUpdate();

			isSucces = true;

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return isSucces;

	}

	public static boolean updateProduct(Product product) {

		boolean isSucces = false;

		String insert = "UPDATE products SET category=?, title=?, description=?, image1=?, image2=?, image3=?, image4=?, image5=?, price=?, offer_id=?, user_id=? WHERE id=?";

		try (Connection connection = DBConnection.getConnection();) {
			
			
			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, product.getCategory());
			ps.setString(2, product.getTitle());
			ps.setString(3, product.getDescription());

			ps.setString(4, product.getImage1());
			ps.setString(5, product.getImage2());
			ps.setString(6, product.getImage3());
			ps.setString(7, product.getImage4());
			ps.setString(8, product.getImage5());

			ps.setFloat(9, product.getPrice());
			ps.setLong(10, product.getOffer().getId());
			ps.setLong(11, product.getUser().getId());

			ps.setLong(12, product.getId());

			ps.executeUpdate();

			isSucces = true;

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return isSucces;

	}

	public static void deleteProduct(long id) {

		String delete = "DELETE FROM products WHERE id=?";

		try (Connection connection = DBConnection.getConnection();) {

			PreparedStatement ps = connection.prepareStatement(delete);

			ps.setLong(1, id);

			ps.executeUpdate();

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

}
