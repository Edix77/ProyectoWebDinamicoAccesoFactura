package com.desafiolatam.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.bcel.Const;

/**
 * Servlet implementation class ProcesarLogin
 */
@WebServlet("/procesarLogin")
public class ProcesarLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String admin = "admin";
		String contrasena = "admin";

		String login = request.getParameter("login");
		String password = request.getParameter("password");

		if (login.isEmpty() || login == null || password.isEmpty() || password == null) {
			request.setAttribute("msjError", "Datos faltantes, por favor verifique");
			request.getRequestDispatcher("/").forward(request, response);
		} else {
			
			if (admin.equals(login) && contrasena.equals(password)) {
				HttpSession sesion = request.getSession(true);
				sesion.setAttribute("Nombre", login);
				//sesion.setAttribute("ROL", "administrativo");

				request.getRequestDispatcher("/calculadoraVentas").forward(request, response);
			}
			else {
				request.setAttribute("msjError", "Datos Incorrectos, por favor verifique");
				request.getRequestDispatcher("/").forward(request, response);
			}
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
