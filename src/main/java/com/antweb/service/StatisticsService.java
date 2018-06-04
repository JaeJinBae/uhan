package com.antweb.service;

import java.util.Date;
import java.util.List;

import com.antweb.domain.StatisticsVO;

public interface StatisticsService {
	public void insert(StatisticsVO vo);
	public int total();
	public int selectCount(String connectdate);
}
