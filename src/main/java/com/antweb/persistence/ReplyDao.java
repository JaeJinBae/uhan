package com.antweb.persistence;

import java.util.List;

import com.antweb.domain.Criteria;
import com.antweb.domain.ReplyVO;

public interface ReplyDao {
	public List<ReplyVO> list(int bno) throws Exception;
	public void create(ReplyVO vo) throws Exception;
	public void update(ReplyVO vo) throws Exception;
	public void delete(int rno) throws Exception;
	public List<ReplyVO> listPage(int bno, Criteria cri) throws Exception;
	public int count(int bno) throws Exception;
	
	public int getBno(int rno) throws Exception;
	
	public void deleteByBno(int bno) throws Exception;
}
