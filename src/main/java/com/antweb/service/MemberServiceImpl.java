package com.antweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.antweb.domain.MemberVO;
import com.antweb.domain.SearchCriteria;
import com.antweb.persistence.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao dao;
	
	@Override
	public List<MemberVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public MemberVO selectOne(String id) {
		return dao.selectOne(id);
	}

	@Override
	public void insert(MemberVO vo) {
		dao.insert(vo);
		
	}

	@Override
	public void update(MemberVO vo) {
		dao.update(vo);
	}

	@Override
	public void delete(String id) {
		dao.delete(id);
	}

	@Override
	public List<MemberVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	

}
