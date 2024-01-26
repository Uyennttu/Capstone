package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DestinationDAO;
import dao.TourDAO;
import entity.Destination;
import entity.Tour;

/**
 * Servlet implementation class TourController
 */
@WebServlet("/Tour")
public class TourController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TourController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String tourId = request.getParameter("tourId");
			TourDAO tourDAO = new TourDAO();
			Tour tour = tourDAO.getTourById(tourId);
			
			DestinationDAO destinationDAO = new DestinationDAO();
			List<Destination> destinations = destinationDAO.getAllStates();
			
			RequestDispatcher rd = request.getRequestDispatcher("/tour_details.jsp");
			request.setAttribute("tour", tour);
			request.setAttribute("destinations", destinations);
			rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
