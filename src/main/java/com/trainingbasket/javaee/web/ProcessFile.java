package com.trainingbasket.javaee.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.trainingbasket.javaee.model.Employee;
import com.trainingbasket.javaee.utils.ExcelReader;

/**
 * Servlet implementation class ProcessFile
 */
public class ProcessFile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProcessFile() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/genpayslips.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = "";
		String UPLOAD_DIRECTORY = getServletContext().getRealPath("/upload");
		System.out.println(UPLOAD_DIRECTORY);
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						name = new File(item.getName()).getName();
						item.write(new File(UPLOAD_DIRECTORY + File.separator + name));
					}
				}
				// File uploaded successfully
				request.setAttribute("message", "File Uploaded Successfully");
				System.out.println(UPLOAD_DIRECTORY + "\\" + name);
				
				Thread.sleep(10000);
				List<Employee> employees = ExcelReader.getEmployeeFromExl(UPLOAD_DIRECTORY + "/" + name);

				request.setAttribute("employees", employees);

			} catch (Exception ex) {
				request.setAttribute("message", "File Upload Failed due to " + ex);
			}
		} else {
			request.setAttribute("message", "Sorry this Servlet only handles file upload request");
		}
		new File(UPLOAD_DIRECTORY + "\\" + name).delete();

		request.getRequestDispatcher("/views/payslips.jsp").forward(request, response);
	}

}
