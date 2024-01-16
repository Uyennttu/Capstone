package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.Customer;
import sql.connection.DBConnection;

public class CustomerDAO {
	public static List<Customer> getFeedback() throws SQLException {
		Connection connection = DBConnection.makeConnection();
		Statement stmt = connection.createStatement();

		String sqlQuery = "select c.first_name, feedbacks, img_name\n" + "from testimonial t\n"
				+ "join customer c on t.customer_id = c.id;";
		ResultSet resultSet = stmt.executeQuery(sqlQuery);

		List<Customer> list = new ArrayList<Customer>();

		while (resultSet.next()) {
			String name = resultSet.getString("c.first_name");
			String feedback = resultSet.getString("feedbacks");
			String imgName = resultSet.getString("img_name");

			Customer customer = new Customer(name, feedback, imgName);
			list.add(customer);
		}
		return list;

	}

	public static Customer getCustomerByCredentials(String username, String password) throws SQLException {
		Connection connection = DBConnection.makeConnection();
		String sqlQuery = "SELECT * FROM customer WHERE username = ? AND password = ?";
		PreparedStatement preStmt = connection.prepareStatement(sqlQuery);
		preStmt.setString(1, username);
		preStmt.setString(2, password);
		ResultSet resultSet = preStmt.executeQuery();

		if (resultSet.next()) {
			int id = resultSet.getInt("id");
			return new Customer(id, username, password);
		}
		return null;

	}
}