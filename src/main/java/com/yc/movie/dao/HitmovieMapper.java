package com.yc.movie.dao;

import com.yc.movie.bean.Hitmovie;
import com.yc.movie.bean.HitmovieExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HitmovieMapper {
    long countByExample(HitmovieExample example);

    int deleteByExample(HitmovieExample example);

    int deleteByPrimaryKey(Integer movieId);

    int insert(Hitmovie record);

    int insertSelective(Hitmovie record);

    List<Hitmovie> selectByExampleWithBLOBs(HitmovieExample example);

    List<Hitmovie> selectByExample(HitmovieExample example);

    Hitmovie selectByPrimaryKey(Integer movieId);

    int updateByExampleSelective(@Param("record") Hitmovie record, @Param("example") HitmovieExample example);

    int updateByExampleWithBLOBs(@Param("record") Hitmovie record, @Param("example") HitmovieExample example);

    int updateByExample(@Param("record") Hitmovie record, @Param("example") HitmovieExample example);

    int updateByPrimaryKeySelective(Hitmovie record);

    int updateByPrimaryKeyWithBLOBs(Hitmovie record);

    int updateByPrimaryKey(Hitmovie record);
}