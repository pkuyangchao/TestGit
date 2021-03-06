package com.yc.movie.dao;

import com.yc.movie.bean.MovieType;
import com.yc.movie.bean.MovieTypeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MovieTypeMapper {
    long countByExample(MovieTypeExample example);

    int deleteByExample(MovieTypeExample example);

    int deleteByPrimaryKey(Integer movieTypeId);

    int insert(MovieType record);

    int insertSelective(MovieType record);

    List<MovieType> selectByExample(MovieTypeExample example);

    MovieType selectByPrimaryKey(Integer movieTypeId);

    int updateByExampleSelective(@Param("record") MovieType record, @Param("example") MovieTypeExample example);

    int updateByExample(@Param("record") MovieType record, @Param("example") MovieTypeExample example);

    int updateByPrimaryKeySelective(MovieType record);

    int updateByPrimaryKey(MovieType record);
}