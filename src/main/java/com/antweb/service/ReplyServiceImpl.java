package com.antweb.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.antweb.domain.ReplyVO;
import com.antweb.persistence.AdviceDao;
import com.antweb.persistence.ReplyDao;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	private ReplyDao dao;
	
	@Autowired
	private AdviceDao adviceDao;

	@Override
	public ReplyVO select(int bno) throws Exception {
		return dao.select(bno);
	}

	@Override
	public void insert(ReplyVO vo) throws Exception {
		dao.insert(vo);
		adviceDao.updateState(vo.getBno());
	}

	@Override
	public void update(ReplyVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(int rno) throws Exception {
		dao.delete(rno);
	}
	
}
