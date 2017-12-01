package org.zerock.persistence.board;

import java.util.List;

import org.zerock.domain.board.BoardVO;
import org.zerock.domain.common.Criteria;

public interface BoardDAO {
	
	public int countPaging(Criteria cri) throws Exception;
	
	public List<BoardVO> listAll() throws Exception;
	
	public List<BoardVO> listPage(int page) throws Exception;
	
	public List<BoardVO> listCriteria(Criteria cri) throws Exception;
	
	public BoardVO read(int bno) throws Exception;
	
	public void create(BoardVO vo) throws Exception;	
	
	public void update(BoardVO vo) throws Exception;
	
	public void delete(int bno) throws Exception;
		
}
