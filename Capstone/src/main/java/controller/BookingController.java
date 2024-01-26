package controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BookingController
 */
@WebServlet("/Booking")
public class BookingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch(action) {
		case "RESERVE" :{
			doReserve(request, response);
			break;
		}
		default:
			break;
		}
	}
	
	public void doReserve(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String tourId = request.getParameter("tourId");
		Set<Integer> uniqueTourId;
		
		HttpSession session = request.getSession();
		if(session.getAttribute("reservation")== null) {
			uniqueTourId = new HashSet<Integer>();
		}else {
			uniqueTourId = (Set<Integer>) session.getAttribute("reservation");
		}
		uniqueTourId.add(Integer.parseInt(tourId));
		session.setAttribute("reservation", uniqueTourId);
		
		response.sendRedirect("Tour?tourId=" + tourId);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
