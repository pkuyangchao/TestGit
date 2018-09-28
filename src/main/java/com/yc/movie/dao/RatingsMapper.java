package com.yc.movie.dao;

import com.yc.movie.bean.Ratings;
import com.yc.movie.bean.RatingsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RatingsMapper {
    long countByExample(RatingsExample example);

    int deleteByExample(RatingsExample example);

    int deleteByPrimaryKey(Integer ratingsId);

    int insert(Ratings record);

    int insertSelective(Ratings record);

    List<Ratings> selectByExample(RatingsExample example);

    Ratings selectByPrimaryKey(Integer ratingsId);

    int updateByExampleSelective(@Param("record") Ratings record, @Param("example") RatingsExample example);

    int updateByExample(@Param("record") Ratings record, @Param("example") RatingsExample example);

    int updateByPrimaryKeySelective(Ratings record);

    int updateByPrimaryKey(Ratings record);
}