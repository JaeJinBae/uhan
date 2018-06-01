package com.antweb.service;

import java.util.List;

import com.antweb.domain.AdviceVO;
import com.antweb.domain.SearchCriteria;

public interface AdviceService {
	public List<AdviceVO> selectAll();
	public AdviceVO selectOne(int bno);
	public void insert(AdviceVO vo);
	public void update(AdviceVO vo);
	public void updateCnt(int bno);
	public void delete(int bno);
	public List<AdviceVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
