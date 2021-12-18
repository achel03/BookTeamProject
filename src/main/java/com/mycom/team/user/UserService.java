package com.mycom.team.user;

import java.util.List;

public interface UserService {
	public int insertUser(UserVO vo);
	public int deleteUser(int id);
	public int updateUser(UserVO vo);
	public UserVO getUser(int sid);
	public List<UserVO> getUserList();
	
	
}
