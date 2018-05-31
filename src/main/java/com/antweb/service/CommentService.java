package com.antweb.service;

import java.util.List;

import com.antweb.domain.CommentVO;
import com.antweb.domain.SearchCriteria;

public interface CommentService {
	public List<CommentVO> selectAll();
	public CommentVO selectOne(int bno);
	public void insert(CommentVO vo);
	public void update(CommentVO vo);
	public void updateCnt(int bno);
	public void delete(int bno);
	public List<CommentVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
