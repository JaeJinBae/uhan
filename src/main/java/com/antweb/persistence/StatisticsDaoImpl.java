package com.antweb.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.antweb.domain.Criteria;
import com.antweb.domain.SearchCriteria;
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
	public int selectCount(String keyword) {
		return session.selectOne(namespace+".selectCount",keyword);
	}

	@Override
	public List<StatisticsVO> selectByDate(SearchCriteria cri) {
		return session.selectList(namespace+".selectByDate",cri);
	}

	@Override
	public int selectByBrowser(String keyword, String browser) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("keyword", keyword);
		map.put("browser", browser);
		return session.selectOne(namespace+".selectByBrowser",map);
	}

}
