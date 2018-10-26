package com.antweb.uhan;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.antweb.domain.MemberVO;
import com.antweb.persistence.MemberDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class NoticeDaoTest {

	@Autowired
	private MemberDao dao;
	
	@Test
	public void selectAll(){
		dao.selectAll();
	}
	
	//@Test
	public void selectOne(){
		dao.selectOne("asdf");
	}
	
	//@Test
	public void insert(){
		MemberVO vo=new MemberVO();
		vo.setId("bjj");
		vo.setPw("bjj");
		vo.setName("가나다라마바사");
		vo.setMail("asdf@asdf.com");
		dao.insert(vo);
	}
	
	//@Test
	public void update(){
		MemberVO vo=new MemberVO();
		vo.setId("asdf");
		vo.setPw("bjj");
		vo.setName("가나다라마바사");
		vo.setMail("asdf@asdf.com");
		dao.update(vo);
	}
	//@Test
	public void delete(){
		dao.delete("asdf");
	}
}
