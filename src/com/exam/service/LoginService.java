package com.exam.service;



import com.exam.connection.MakeConnection;
import com.exam.dao.Join1_DAO;
import com.exam.dto.Join1_VO;
import com.exam.dto.UserDTO;

public class LoginService {
	private Join1_DAO dao = new Join1_DAO();

	public UserDTO login(String id, String password) {
		try {
			MakeConnection conn = MakeConnection.getInstance();
			UserDTO vo = dao.selectById(id);

		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
}
