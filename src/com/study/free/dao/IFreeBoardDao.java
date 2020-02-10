package com.study.free.dao;

import java.sql.SQLException;
import java.util.List;

import com.study.free.vo.FreeBoardVO;

public interface IFreeBoardDao {
	
	
	public List<FreeBoardVO> getBoardList() throws SQLException;
	
	 
	public FreeBoardVO getBoard(int boNum) throws SQLException;
	
	
	public int insertBoard(FreeBoardVO board)throws SQLException;

	public int updateBoard(FreeBoardVO board)throws SQLException;
	
	public int deleteBoard(FreeBoardVO board)throws SQLException;
	
	public int increaseHit(int boNum)throws SQLException;
	
		
}
