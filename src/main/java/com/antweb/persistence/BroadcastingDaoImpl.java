package com.antweb.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.antweb.domain.BroadcastingVO;
import com.antweb.domain.NoticeVO;
import com.antweb.domain.SearchCriteria;

@Repository
public class BroadcastingDaoImpl implements BroadcastingDao {
	
	private static final String namespace="com.antweb.mappers.BroadcastingMapper";
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<BroadcastingVO> selectAll() {
		return session.selectList(namespace+".selectAll");
	}

	@Override
	public BroadcastingVO selectOne(int bno) {
		return session.selectOne(namespace+".selectOne", bno);
	}

	@Override
	public void insert(BroadcastingVO vo) {
		session.insert(namespace+".insert", vo);
	}

	@Override
	public void update(BroadcastingVO vo) {
		session.update(namespace+".update", vo);
	}
	
	@Override
	public void updateCnt(int bno) {
		session.update(namespace+".updateCnt", bno);
	}

	@Override
	public void delete(int bno) {
		session.delete(namespace+".delete",bno);
		
	}

	@Override
	public List<BroadcastingVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".listSearchCount", cri);
	}

}
