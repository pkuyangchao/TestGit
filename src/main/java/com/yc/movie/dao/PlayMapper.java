package com.yc.movie.dao;

import com.yc.movie.bean.Play;
import com.yc.movie.bean.PlayExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PlayMapper {
    long countByExample(PlayExample example);

    int deleteByExample(PlayExample example);

    int deleteByPrimaryKey(Integer playId);

    int insert(Play record);

    int insertSelective(Play record);

    List<Play> selectByExample(PlayExample example);

    Play selectByPrimaryKey(Integer playId);

    int updateByExampleSelective(@Param("record") Play record, @Param("example") PlayExample example);

    int updateByExample(@Param("record") Play record, @Param("example") PlayExample example);

    int updateByPrimaryKeySelective(Play record);

    int updateByPrimaryKey(Play record);
}