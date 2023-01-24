package task01.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import task01.domain.User;
import task01.service.UserService;
import task01.service.impl.UserServiceImpl;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UserService userService = UserServiceImpl.getUserService();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("email");
		String password = request.getParameter("password");
		
		User user = userService.getUserByEmail(login);
		
		if(user == null) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		if(user.getPassword().equals(password)) {
			request.setAttribute("userFirstName", user.getFirstName());
			request.setAttribute("userLastName", user.getLastName());
			request.setAttribute("userAction", "logged in to");
			
			request.getRequestDispatcher("cabinet.jsp").forward(request, response);
		}
	}

}