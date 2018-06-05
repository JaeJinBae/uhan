package com.antweb.service;

import java.util.List;

import com.antweb.domain.Criteria;
import com.antweb.domain.SearchCriteria;
import com.antweb.domain.StatisticsVO;

public interface StatisticsService {
	public void insert(StatisticsVO vo);
	public int total();
	public int selectCount(String keyword);
	public List<StatisticsVO> selectByDate(SearchCriteria cri);
}
