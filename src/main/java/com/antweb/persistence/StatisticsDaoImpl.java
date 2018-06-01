package com.antweb.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.antweb.domain.StatisticsVO;
@Repository
public class StatisticsDaoImpl implements StatisticsDao {
	
	private static final String namespace="com.antweb.mappers.StatisticsMapper";
	
	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(StatisticsVO vo) {
		session.insert(namespace+".insert",vo);
	}

}
