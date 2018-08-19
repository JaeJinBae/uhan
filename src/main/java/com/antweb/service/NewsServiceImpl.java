package com.antweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.antweb.domain.NewsVO;
import com.antweb.domain.SearchCriteria;
import com.antweb.persistence.NewsDao;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsDao dao;
	
	@Override
	public List<NewsVO> selectAll() {
		return dao.selectAll();
	}
	
	@Override
	public NewsVO selectOne(int bno) {
		return dao.selectOne(bno);
	}

	@Override
	public void insert(NewsVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(NewsVO vo) {
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
	public List<NewsVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	

}
