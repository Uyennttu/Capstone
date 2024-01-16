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

import dao.CustomerDAO;
import dao.DestinationDAO;
import dao.TourDAO;
import dao.TourGuideDAO;
import entity.Customer;
import entity.Destination;
import entity.Tour;
import entity.TourGuide;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/Home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	TourDAO tourDAO = new TourDAO();
	List<Tour> tours;

	DestinationDAO destinationDAO = new DestinationDAO();
	List<Destination> destinations;

	CustomerDAO customerDAO = new CustomerDAO();
	List<Customer> customers;

	TourGuideDAO tourGuideDAO = new TourGuideDAO();
	List<TourGuide> tourGuides;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeController() {
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
			String action = request.getParameter("action");
			if (action == null) {
				action = "DEFAULT";
			}
			switch (action) {
			case "SHOW_TOURS_BY_DESTINATION": {
				String destinationId = request.getParameter("destinationId");
				tours = tourDAO.getToursByDestination(destinationId);
				break;
			}
			case "SHOW_ALL_TOURS": {
				tours = tourDAO.getAllTours();
				break;
			}
			case "SEARCH": {
				getToursBySearch(request, response);
				break;

			}
			default:
				tours = tourDAO.getPopularTours();
			}

			destinations = destinationDAO.getAllStates();
			customers = customerDAO.getFeedback();
			tourGuides = tourGuideDAO.getTourGuide();

			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			request.setAttribute("tours", tours);
			request.setAttribute("destinations", destinations);
			request.setAttribute("testimonialDetails", customers);
			request.setAttribute("tourGuideDetails", tourGuides);
			rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void getToursBySearch(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		String searchValue = request.getParameter("searchValue");
		tours = tourDAO.getToursBySearch(searchValue);

		if (tours.isEmpty()) {
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			request.setAttribute("searchResultMessage", "Sorry. This tour is fully booked!");
			request.setAttribute("destinations", destinations);
			request.setAttribute("testimonialDetails", customers);
			request.setAttribute("tourGuideDetails", tourGuides);			
			rd.forward(request, response);
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
