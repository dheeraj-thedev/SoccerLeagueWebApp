package com.trainingbasket.javaee.utils;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class InitListner implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent context) {
		//code to read a file
	}

	@Override
	public void contextInitialized(ServletContextEvent context) {
		try {
//			System.out.println(Paths.get(context.getServletContext().getRealPath("/contextData")));
		List<String> seasons=Files.readAllLines(Paths.get(context.getServletContext().getRealPath("/contextData")));
		context.getServletContext().setAttribute("seasons", seasons);
//		seasons.forEach(System.out::println);
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		

	}

}
