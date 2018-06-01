package com.antweb.service;

import java.util.List;

import com.antweb.domain.Criteria;
import com.antweb.domain.ReplyVO;

public interface ReplyService {
	public ReplyVO select(int bno) throws Exception;
	public void insert(ReplyVO vo) throws Exception;
	public void update(ReplyVO vo) throws Exception;
	public void delete(int rno) throws Exception;
}
