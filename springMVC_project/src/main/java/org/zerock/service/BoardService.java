package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;

public interface BoardService {
	
	public void regist(BoardVO board) throws Exception;
	
	public BoardVO read(int bno) throws Exception;
	
	public void update(BoardVO board) throws Exception;
	
	public void delete(int bno) throws Exception;
	
	public List<BoardVO> listAll() throws Exception;
	
}