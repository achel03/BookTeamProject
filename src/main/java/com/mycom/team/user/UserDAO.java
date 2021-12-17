package com.mycom.team.user;

import java.util.List;

//import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//import com.mycom.team.user.UserVO;

@Repository
public class UserDAO {
	@Autowired
	SqlSessionTemplate sqlSession;

	public UserVO getUser(UserVO vo) {
		return sqlSession.selectOne("User.getUser", vo);
	}
	
	public int insertUser(UserVO vo) {
		System.out.println("===> JDBC로 insertUser() 기능 처리");
		int result = sqlSession.insert("User.insertUser", vo);
		return result;
	}

	//유저 삭제
	public int deleteUser(int id) {
		System.out.println("===> JDBC로 deleteUser() 기능 처리");
		int result = sqlSession.delete("User.deleteUser", id);
		return result;
	}
	
	public int updateUser(UserVO vo) {
		System.out.println("===> JDBC로 updateUser() 기능 처리");
		int result = sqlSession.insert("User.updateUser", vo);
		return result;
	}	
	
	public UserVO getUser(int seq) {
		System.out.println("===> JDBC로 getUser() 기능 처리");
		UserVO one = sqlSession.selectOne("User.getUser", seq);
		return one;
	}
	
	public List<UserVO> getUserList(){
		System.out.println("===> JDBC로 getUserList() 기능 처리");
		List<UserVO> list = sqlSession.selectList("User.getUserList");
		return list;
	}
}