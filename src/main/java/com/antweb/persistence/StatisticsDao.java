package com.antweb.persistence;

import java.util.List;

import com.antweb.domain.Criteria;
import com.antweb.domain.SearchCriteria;
import com.antweb.domain.StatisticsVO;

public interface StatisticsDao {
	public void insert(StatisticsVO vo);
	public int total();
	public int selectCount(String keyword);
	public List<StatisticsVO> selectByDate(SearchCriteria cri);
	public int selectByBrowser(String keyword,String browser);
	public int selectByDevice(String keyword,String device);
}
