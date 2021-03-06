package digimation.vacationrental.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import digimation.vacationrental.bean.AdminBean;
import digimation.vacationrental.bean.CountryBean;
import digimation.vacationrental.dao.AdminDAO;
import digimation.vacationrental.dao.CountryDAO;


public class AdminListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<AdminBean> listOfAdmin = new AdminDAO().list();
		
		if(listOfAdmin!=null){
			request.setAttribute("listOfAdmin", listOfAdmin);
			request.getRequestDispatcher("AdminList.jsp").forward(request, response);
		}
	}

}
