package com.antweb.persistence;

import java.util.List;

import com.antweb.domain.BroadcastingVO;
import com.antweb.domain.SearchCriteria;

public interface BroadcastingDao {
	public List<BroadcastingVO> selectAll();
	public BroadcastingVO selectOne(int bno);
	public void insert(BroadcastingVO vo);
	public void update(BroadcastingVO vo);
	public void updateCnt(int bno);
	public void delete(int bno);
	public List<BroadcastingVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
