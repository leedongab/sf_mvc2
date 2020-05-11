package com.exam.handler;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.dto.UserDTO;
import com.exam.service.LoginService;

public class LoginHandler implements Action {
	private static final String FORM_VIEW = "/WEB-INF/view/loginForm.jsp";
	private static final String RETURN_VIEW = "/WEB-INF/view/loginOk.jsp";
	private LoginService loginservice = new LoginService();
	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req,resp);
		}else if(req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req,resp);
		}else {
			resp.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED); //405 에러 창 띄우기
			return null;
		}

	}

	private String processForm(HttpServletRequest req, HttpServletResponse resp) {
		return FORM_VIEW; //해당 보여지는 페이지로 주소를 리턴! get일경우
	}
	private String processSubmit(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//post 즉 서비스가서 데이터 베이스를 거쳐와야 하는 경우

		// 인코딩---------------------------------------------------------------------
		req.setCharacterEncoding("UTF-8"); // throws IOException  던져놓음 위에 없으면 try/catch 가필요함
		resp.setContentType("text/html; charset=UTF-8"); //한글로 돌려줘야 할 경우

		String id = trim(req.getParameter("id"));
		String password = trim(req.getParameter("password"));

		Map<String, Boolean> errors = new HashMap<String, Boolean>();
		req.setAttribute("errors", errors);


		if(id == null || id.isEmpty()) {
			errors.put("id", Boolean.TRUE);
		}else if(password==null || password.isEmpty()){
			errors.put("password", Boolean.TRUE);
		}

		if(!errors.isEmpty()) {
			return FORM_VIEW;
		}
		try {
			UserDTO user = loginservice.login(id, password);
			req.getSession().setAttribute("authUser", user);
			/*
			System.out.println("id : " + id);
			System.out.println("password : " + password);
			 */
			return RETURN_VIEW;
		}catch(RuntimeException e){
			errors.put("pwNotEqual", Boolean.TRUE);
			return FORM_VIEW;
		}

	}

	private String trim(String str) {
		//공백이 있을겨우 절삭해주는 메소드
		return str == null ? null : str.trim(); //여기서 변수 str은 매개변수이다.
	}

}
