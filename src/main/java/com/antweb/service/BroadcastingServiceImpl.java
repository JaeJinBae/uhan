package com.antweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.antweb.domain.BroadcastingVO;
import com.antweb.domain.SearchCriteria;
import com.antweb.persistence.BroadcastingDao;

@Service
public class BroadcastingServiceImpl implements BroadcastingService {

	@Autowired
	private BroadcastingDao dao;
	
	@Override
	public List<BroadcastingVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public BroadcastingVO selectOne(int bno) {
		return dao.selectOne(bno);
	}

	@Override
	public void insert(BroadcastingVO vo) {
		dao.insert(vo);
		
	}

	@Override
	public void update(BroadcastingVO vo) {
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
	public List<BroadcastingVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	

}
