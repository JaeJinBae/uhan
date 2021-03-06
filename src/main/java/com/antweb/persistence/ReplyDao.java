package com.antweb.persistence;

import com.antweb.domain.ReplyVO;

public interface ReplyDao {
	public ReplyVO select(int bno) throws Exception;
	public void insert(ReplyVO vo) throws Exception;
	public void update(ReplyVO vo) throws Exception;
	public void delete(int rno) throws Exception;
	
}
