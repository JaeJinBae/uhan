package com.antweb.service;

import java.util.List;

import com.antweb.domain.NoticeVO;
import com.antweb.domain.SearchCriteria;

public interface NoticeService {
	public List<NoticeVO> selectAll();
	public NoticeVO selectOne(int bno);
	public void insert(NoticeVO vo);
	public void update(NoticeVO vo);
	public void updateCnt(int bno);
	public void delete(int bno);
	public List<NoticeVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
