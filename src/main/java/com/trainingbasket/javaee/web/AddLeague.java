package com.trainingbasket.javaee.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trainingbasket.javaee.model.League;

/**
 * Servlet implementation class AddLeague
 */
@WebServlet(urlPatterns = "/addleague")
public class AddLeague extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/addleague.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int year = 0;
		String season = request.getParameter("season");
		String title = request.getParameter("title");
		List<String> errMsg = new ArrayList<String>();
		try {
			year = Integer.parseInt(request.getParameter("year"));

		} catch (Exception e) {
			errMsg.add("Please enter a valid year." + e.getMessage());
		}
		if (year < 2020) {
			errMsg.add("Please cannot be less than current year.");
		}
		if (title.equals("")) {
			errMsg.add("Title cannot be blank.");
		}
		RequestDispatcher dispatcher = null;
		if (errMsg.isEmpty()) {
			League league = new League();
			List<League> leagues = (List<League>) getServletContext().getAttribute("leagues");
			if (leagues == null) {
				leagues = new ArrayList<League>();
				league.setSeason(season);
				league.setTitle(title);
				league.setYear(year);
				leagues.add(league);
				getServletContext().setAttribute("leagues", leagues);
			} else {
				league.setSeason(season);
				league.setTitle(title);
				league.setYear(year);
				leagues.add(league);
				getServletContext().setAttribute("leagues", leagues);
			}
			request.setAttribute("msg", "League has been added." + league);
			 dispatcher = request.getRequestDispatcher("/views/listleague.jsp");
		} else {
			request.setAttribute("errMsg", errMsg);
			 dispatcher = request.getRequestDispatcher("/views/addleague.jsp");
		}
			
		dispatcher.forward(request, response);
	}

}
