package DAO;

import java.sql.Connection;
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
			String destination = resultSet.getString("destination");	
			String imgName = resultSet.getString("img_name");
			double rating = resultSet.getDouble("rating");
			int numOfRate = resultSet.getInt("num_of_rate");
			double price = resultSet.getDouble("price");
			boolean bestSeller = resultSet.getBoolean("best_seller");

			Tour tour = new Tour(id, name, destination, imgName, rating, numOfRate, price, bestSeller);
			list.add(tour);

		}
		return list;
	
	}
}
