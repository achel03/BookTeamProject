package com.mycom.team;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycom.team.board.BoardDAO;
import com.mycom.team.board.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDAO boardDAO;

	@Override
	public int insertBoard(BoardVO vo) {
		return boardDAO.insertBoard(vo);
		
	}
	
	@Override
	public int deleteBoard(int id) {
		return boardDAO.deleteBoard(id);
		
	}
	
	@Override
	public int updateBoard(BoardVO vo) {
		return boardDAO.updateBoard(vo);
		
	}
	
	@Override
	public List<BoardVO> getBoardList(){
		return boardDAO.getBoardList();
		
	}
	@Override
	public BoardVO getBoard(int seq) {
		return boardDAO.getBoard(seq);
	}
}