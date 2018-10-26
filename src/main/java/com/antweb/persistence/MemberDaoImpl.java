package com.antweb.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.antweb.domain.MemberVO;
import com.antweb.domain.SearchCriteria;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	private static final String namespace="com.antweb.mappers.MemberMapper";
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<MemberVO> selectAll() {
		return session.selectList(namespace+".selectAll");
	}

	@Override
	public MemberVO selectOne(String id) {
		return session.selectOne(namespace+".selectOne", id);
	}

	@Override
	public void insert(MemberVO vo) {
		session.insert(namespace+".insert", vo);
	}

	@Override
	public void update(MemberVO vo) {
		session.update(namespace+".update", vo);
	}

	@Override
	public void delete(String id) {
		session.delete(namespace+".delete",id);
		
	}

	@Override
	public List<MemberVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".listSearchCount", cri);
	}

}
