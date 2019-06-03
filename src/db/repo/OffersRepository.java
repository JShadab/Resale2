package db.repo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import beans.Offer;
import db.DBConnection;

public class OffersRepository {

	public static Offer findOffers(long id) {

		String select = "SELECT * FROM offers WHERE id=?";

		Offer offer = new Offer();

		try (Connection connection = DBConnection.getConnection();) {

			PreparedStatement ps = connection.prepareStatement(select);

			ps.setLong(1, id);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				offer.setId(rs.getLong("id"));
				offer.setDescription(rs.getString("description"));

				LocalDate expiryDate = LocalDate.parse(rs.getString("expiryDate"));
				offer.setExpiryDate(expiryDate);

			}

			rs.close();

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return offer;

	}

	public static List<Offer> getAllOffers() {

		String select = "SELECT * FROM offers";

		List<Offer> offers = new ArrayList<Offer>();

		try (Connection connection = DBConnection.getConnection();) {

			PreparedStatement ps = connection.prepareStatement(select);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				Offer offer = new Offer();

				offer.setId(rs.getLong("id"));
				offer.setDescription(rs.getString("description"));

				LocalDate expiryDate = LocalDate.parse(rs.getString("expiryDate"));
				offer.setExpiryDate(expiryDate);

				offers.add(offer);

			}

			rs.close();

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return offers;

	}

	public static boolean createOffers(Offer offer) {

		boolean isSucces = false;

		String insert = "INSERT INTO offers (description, expiryDate) VALUES (?,?)";

		try (Connection connection = DBConnection.getConnection();) {

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, offer.getDescription());
			ps.setString(2, offer.getExpiryDate().toString());

			ps.executeUpdate();

			isSucces = true;

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return isSucces;

	}

	public static void updateOffers(Offer offer) {

		String update = "UPDATE offers SET description=? , expiryDate=? WHERE id=?";

		try (Connection connection = DBConnection.getConnection();) {

			PreparedStatement ps = connection.prepareStatement(update);

			ps.setString(1, offer.getDescription());
			ps.setString(2, offer.getExpiryDate().toString());
			ps.setLong(3, offer.getId());

			ps.executeUpdate();

			ps.close();

		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

	public static void deleteOffers(long id) {

		String delete = "DELETE FROM offers WHERE id=?";

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
