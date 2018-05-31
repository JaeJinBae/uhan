package com.antweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.antweb.domain.CommentVO;
import com.antweb.domain.SearchCriteria;
import com.antweb.persistence.CommentDao;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentDao dao;
	
	@Override
	public List<CommentVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public CommentVO selectOne(int bno) {
		return dao.selectOne(bno);
	}

	@Override
	public void insert(CommentVO vo) {
		dao.insert(vo);
		
	}

	@Override
	public void update(CommentVO vo) {
		dao.update(vo);
	}
	
	@Override
	public void updateCnt(int bno) {
		dao.updateCnt(bno);
	}

	@Override
	public void delete(int bno) {
		dao.delete(bno);
	}

	@Override
	public List<CommentVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	

}
