package com.exam.service;

import java.sql.Connection;

import com.exam.connection.MakeConnection;
import com.exam.dao.Join1_DAO;
import com.exam.dto.MemberDTO;
import com.exam.dto.UserDTO;

public class LoginService {
	private Join1_DAO dao = new Join1_DAO();

	public UserDTO login(String id, String password) {
		try {
			Connection conn = MakeConnection.getInstance();
			Join1_VO vo = dao.

		} catch (Exception e) {
			// TODO: handle exception
		}
		return 미정;
	}
}
