package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.Tour;
import sql.connection.DBConnection;

public class TourDAO {
	public List<Tour> getPopularTours() throws SQLException {
		Connection connection = DBConnection.makeConnection();
		Statement stmt = connection.createStatement();
		String sqlQuery = "SELECT * FROM tour WHERE best_seller = 1";
		ResultSet resultSet = stmt.executeQuery(sqlQuery);

		List<Tour> list = new ArrayList<Tour>();

		while (resultSet.next()) {
			int id = resultSet.getInt("id");
			String name = resultSet.getString("name");
			String city = resultSet.getString("city");
			String imgName = resultSet.getString("img_name");
			double rating = resultSet.getDouble("rating");
			int numOfRate = resultSet.getInt("num_of_rate");
			double price = resultSet.getDouble("price");
			boolean bestSeller = resultSet.getBoolean("best_seller");

			Tour tour = new Tour(id, name, city, imgName, rating, numOfRate, price, bestSeller);
			list.add(tour);

		}
		return list;

	}

	public static Tour getTourById(String tourId) throws SQLException {
		Connection connection = DBConnection.makeConnection();
		String sqlQuery = "SELECT * FROM tour WHERE id = ?";
		PreparedStatement preStmt = connection.prepareStatement(sqlQuery);
		preStmt.setInt(1, Integer.parseInt(tourId));
		ResultSet resultSet = preStmt.executeQuery();

		while (resultSet.next()) {
			int id = resultSet.getInt("id");
			String name = resultSet.getString("name");
			String city = resultSet.getString("city");
			String imgName = resultSet.getString("img_name");
			double rating = resultSet.getDouble("rating");
			int numOfRate = resultSet.getInt("num_of_rate");
			double price = resultSet.getDouble("price");
			boolean bestSeller = resultSet.getBoolean("best_seller");

			Tour tour = new Tour(id, name, city, imgName, rating, numOfRate, price, bestSeller);

			return tour;
		}
		return null;

	}

	public List<Tour> getToursByDestination(String destinationId) throws SQLException {
		Connection connection = DBConnection.makeConnection();
		String sqlQuery = "SELECT * FROM tour WHERE destination_id = ? ";
		PreparedStatement preStmt = connection.prepareStatement(sqlQuery);
		preStmt.setInt(1, Integer.parseInt(destinationId));
		ResultSet resultSet = preStmt.executeQuery();

		List<Tour> list = new ArrayList<Tour>();

		while (resultSet.next()) {
			int id = resultSet.getInt("id");
			String name = resultSet.getString("name");
			String city = resultSet.getString("city");
			String imgName = resultSet.getString("img_name");
			double rating = resultSet.getDouble("rating");
			int numOfRate = resultSet.getInt("num_of_rate");
			double price = resultSet.getDouble("price");
			boolean bestSeller = resultSet.getBoolean("best_seller");

			Tour tour = new Tour(id, name, city, imgName, rating, numOfRate, price, bestSeller);
			list.add(tour);

		}
		return list;
	}

	public List<Tour> getToursBySearch(String searchValue) throws SQLException {
		Connection connection = DBConnection.makeConnection();
		String sqlQuery = "SELECT * FROM tour WHERE name LIKE ?";
		PreparedStatement preStmt = connection.prepareStatement(sqlQuery);
		preStmt.setString(1, "%" + searchValue + "%");
		ResultSet resultSet = preStmt.executeQuery();

		List<Tour> list = new ArrayList<Tour>();

		while (resultSet.next()) {
			int id = resultSet.getInt("id");
			String name = resultSet.getString("name");
			String city = resultSet.getString("city");
			String imgName = resultSet.getString("img_name");
			double rating = resultSet.getDouble("rating");
			int numOfRate = resultSet.getInt("num_of_rate");
			double price = resultSet.getDouble("price");
			boolean bestSeller = resultSet.getBoolean("best_seller");

			Tour tour = new Tour(id, name, city, imgName, rating, numOfRate, price, bestSeller);
			list.add(tour);

		}
		return list;
	}
	
	public List<Tour> getAllTours() throws SQLException {
		Connection connection = DBConnection.makeConnection();
		Statement stmt = connection.createStatement();
		String sqlQuery = "SELECT * FROM tour";
		ResultSet resultSet = stmt.executeQuery(sqlQuery);

		List<Tour> list = new ArrayList<Tour>();

		while (resultSet.next()) {
			int id = resultSet.getInt("id");
			String name = resultSet.getString("name");
			String city = resultSet.getString("city");
			String imgName = resultSet.getString("img_name");
			double rating = resultSet.getDouble("rating");
			int numOfRate = resultSet.getInt("num_of_rate");
			double price = resultSet.getDouble("price");
			boolean bestSeller = resultSet.getBoolean("best_seller");

			Tour tour = new Tour(id, name, city, imgName, rating, numOfRate, price, bestSeller);
			list.add(tour);

		}
		return list;
	}


}