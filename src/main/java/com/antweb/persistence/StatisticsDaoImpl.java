package com.antweb.persistence;

import java.util.Date;
import java.util.List;

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

	@Override
	public int total() {
		return session.selectOne(namespace+".total");
	}

	@Override
	public int selectCount(String connectdate) {
		return session.selectOne(namespace+".selectCount",connectdate);
	}

}
