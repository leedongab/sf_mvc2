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

@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doProcess(req, resp); //doProcess 메소드 실행 LoginHandler 에서 get으로 리턴한거 뷰페이지로
}
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doProcess(req, resp);//doProcess 메소드 실행  LoginHandler 에서 post 리턴한 뷰페이지로
}
private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws IOException {
	req.setCharacterEncoding("UTF-8");
	resp.setContentType("text/html;charset=UTF-8");

	Action model = new LoginHandler(); //일단 login핸들러로 가자.
	String viewPage = null;//핸들러에서 get/post로 리턴해준다.

	try {
		viewPage = model.process(req, resp); //핸들러에있는 process다
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	RequestDispatcher rd = req.getRequestDispatcher(viewPage);

	try {
		rd.forward(req, resp);
	} catch (ServletException e) {
		e.printStackTrace();
	}


}
}