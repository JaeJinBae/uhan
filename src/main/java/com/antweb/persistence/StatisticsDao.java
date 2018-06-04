package com.antweb.persistence;

import java.util.List;

import com.antweb.domain.StatisticsVO;

public interface StatisticsDao {
	public void insert(StatisticsVO vo);
	public int total();
	public int selectCount(String connectdate);

}
