package com.trainingbasket.javaee.web;

import java.awt.geom.GeneralPath;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.trainingbasket.javaee.model.League;
import com.trainingbasket.javaee.model.MyDate;
import com.trainingbasket.javaee.model.Player;

/**
 * Servlet implementation class RegisterLeague
 */
public class RegisterLeague extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterLeague() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/registerleague.jsp");
		List<League> leagues = (List<League>) getServletContext().getAttribute("leagues");
		dispatcher.forward(request, response);
	}

	List<String> errMsg;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String dob = request.getParameter("dob");
		String contact = request.getParameter("contact");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String league = request.getParameter("leagues");
		String male = request.getParameter("male");
		String female = request.getParameter("female");
		validateData(dob, contact, address, name, email, league);
		Player player = new Player();
		Date dateOB = new Date();
		String dobdash[] = dob.split("-");
		String dobslash[] = dob.split("/");
		if (dobdash.length == 3) {
			dateOB.setDate(Integer.parseInt(dobdash[0]));
			dateOB.setMonth(Integer.parseInt(dobdash[1]));
			dateOB.setYear(Integer.parseInt(dobdash[2]));
		} else if (dobslash.length == 3) {
			dateOB.setDate(Integer.parseInt(dobslash[0]));
			dateOB.setMonth(Integer.parseInt(dobslash[1]));
			dateOB.setYear(Integer.parseInt(dobslash[2]));
		}
		player.setDob(dateOB);
		System.out.println(league);
		String leaguesfromui[]= league.split("-");
		System.out.println(leaguesfromui.length);
		//Arrays.asList(leaguesfromui).forEach(System.err::println);
		League league1 =  new League();
		league1.setId(Integer.parseInt( leaguesfromui[0].trim()));
		league1.setTitle(leaguesfromui[1].trim());
		league1.setSeason(leaguesfromui[2].trim());
		//System.out.println(leaguesfromui[3].trim());
		league1.setYear(Integer.parseInt( leaguesfromui[3].trim()));
		
		if (male!=null) {
			player.setGender("male");
		}
		if (female!=null) {
			player.setGender("female");
		}
		if (errMsg.size() != 0) {

		}
		else {
			player.setAddress(address);
			player.setContactNumber(contact);
			player.setName(name);
			player.setLeague(league1);
			player.setEmail(email);	
		}
		
		System.out.println(player);
	}

	private void validateData(String dob, String contact, String address, String name, String email, String league) {
		errMsg = new ArrayList<String>();
		if (name.equals("") || name == null) {
			errMsg.add("Name can not be left blank");
		}
		if (contact.equals("") || contact == null) {
			errMsg.add("Contact can not be left blank");
		}
		if (address.equals("") || address == null) {
			errMsg.add("Name can not be left blank");
		}
		if (dob.equals("") || dob == null) {
			errMsg.add("Name can not be left blank");
		}
		if (email.equals("") || email == null) {
			errMsg.add("Name can not be left blank");
		}
		if (league.equals("") || league == null) {
			errMsg.add("Name can not be left blank");
		}
	}

}
