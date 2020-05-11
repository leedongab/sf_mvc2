package com.exam.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.handler.Action;
import com.exam.handler.LoginHandler;

@WebServlet("/SF_Login_Control.do")
public class SF_Login_Control extends HttpServlet{
	private static final String FORM_VIEW = "/WEB-INF/view/loginsafetyLogin.jsp";

@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

}
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String viewPage = null;
	Action model = new LoginHandler();

	req.setCharacterEncoding("UTF-8");
	resp.setContentType("text/html; charset=UTF-8");

	try {
		viewPage = model.process(req, resp);

		RequestDispatcher rd = req.getRequestDispatcher(viewPage);
		rd.forward(req, resp);

	} catch (SQLException | ServletException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}


	}
}
