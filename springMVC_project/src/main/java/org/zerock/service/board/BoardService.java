package org.zerock.service.board;

import java.util.List;

import org.zerock.domain.board.BoardVO;
import org.zerock.domain.common.Criteria;

public interface BoardService {
	
	public int listCountCriteria(Criteria cri) throws Exception;
	
	public List<BoardVO> listAll() throws Exception;
	
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	
	public BoardVO read(int bno) throws Exception;
	
	public void regist(BoardVO board) throws Exception;
	
	public void update(BoardVO board) throws Exception;
	
	public void delete(int bno) throws Exception;
	
}
