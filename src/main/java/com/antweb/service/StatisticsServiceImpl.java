package com.antweb.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.antweb.domain.StatisticsVO;
import com.antweb.persistence.StatisticsDao;

@Service
public class StatisticsServiceImpl implements StatisticsService {
	
	@Autowired
	private StatisticsDao dao;
	
	@Override
	public void insert(StatisticsVO vo) {
		dao.insert(vo);
	}

}
