package com.mycom.team.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl {
	@Autowired
	UserDAO userDAO;

	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}

	public int insertUser(UserVO vo) {
		return userDAO.insertUser(vo);
	}
	public int deleteUser(int id) {
		return userDAO.deleteUser(id);
		
	}
	
	public int updateUser(UserVO vo) {
		return userDAO.updateUser(vo);
		
	}
	
	public List<UserVO> getUserList(){
		return userDAO.getUserList();
		
	}
	public UserVO getUser(int seq) {
		return userDAO.getUser(seq);
	}
}