package com.trainingbasket.javaee.modal;

public class LeagueModal {
	static int tempID;
	int id;
	String season;
	int year;
	String title;

	public LeagueModal(String season, int year, String title) {
		super();
		this.id = ++tempID;
		this.season = season;
		this.year = year;
		this.title = title;
	}

	public LeagueModal() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSeason() {
		return season;
	}

	public void setSeason(String season) {
		this.season = season;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "<td>" + title + "</td><td>" + season + "</td><td>" + year + "</td>";
	}

}
