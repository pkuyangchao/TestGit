package com.yc.movie.test;

import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.movie.bean.Cinemaseat;
import com.yc.movie.dao.CinemaseatMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class CinemaseatTest {

	@Autowired
	CinemaseatMapper cinemaseatMapper;
	
	@Autowired
	SqlSession sqlSession;
	
	@Test
	public void testInsert() {
		CinemaseatMapper mapper = sqlSession.getMapper(CinemaseatMapper.class);
		int m = 8;
		for(int i = 1;i<11;i++){
			for(int j=1;j<11;j++) {
				if (i==3) {
					mapper.insertSelective(new Cinemaseat(null,m,"过道",i,j));
				}else {
					mapper.insertSelective(new Cinemaseat(null,m,"可用",i,j));
				}
			}
		}
		System.out.println("批量完成");
	}
}
