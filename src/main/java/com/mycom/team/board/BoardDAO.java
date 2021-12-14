package com.mycom.team.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	
	public int insertBoard(BoardVO vo) {
		System.out.println("===> JDBC로 insertBoard() 기능 처리");
		int result = sqlSession.insert("Board.insertBoard", vo);
		return result;
	}

	// 글 삭제
	public int deleteBoard(int id) {
		System.out.println("===> JDBC로 deleteBoard() 기능 처리");
		int result = sqlSession.delete("Board.deleteBoard", id);
		return result;
		
	}
	
	public int updateBoard(BoardVO vo) {
		System.out.println("===> JDBC로 updateBoard() 기능 처리");
		int result = sqlSession.insert("Board.updateBoard", vo);
		return result;
	}	
	
	public BoardVO getBoard(int seq) {
		System.out.println("===> JDBC로 getBoard() 기능 처리");
		BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
		return one;
		
	}
	
	public List<BoardVO> getBoardList(){
		System.out.println("===> JDBC로 getBoardList() 기능 처리");
		List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
		return list;
	}
}