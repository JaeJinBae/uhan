package com.antweb.persistence;

import java.util.List;

import com.antweb.domain.NewsVO;
import com.antweb.domain.SearchCriteria;

public interface NewsDao {
	public List<NewsVO> selectAll();
	public NewsVO selectOne(int bno);
	public void insert(NewsVO vo);
	public void update(NewsVO vo);
	public void updateCnt(int bno);
	public void delete(int bno);
	public List<NewsVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
