package com.yc.movie.dao;

import com.yc.movie.bean.Cinemahall;
import com.yc.movie.bean.CinemahallExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CinemahallMapper {
    long countByExample(CinemahallExample example);

    int deleteByExample(CinemahallExample example);

    int deleteByPrimaryKey(Integer hallId);

    int insert(Cinemahall record);

    int insertSelective(Cinemahall record);

    List<Cinemahall> selectByExample(CinemahallExample example);

    Cinemahall selectByPrimaryKey(Integer hallId);

    int updateByExampleSelective(@Param("record") Cinemahall record, @Param("example") CinemahallExample example);

    int updateByExample(@Param("record") Cinemahall record, @Param("example") CinemahallExample example);

    int updateByPrimaryKeySelective(Cinemahall record);

    int updateByPrimaryKey(Cinemahall record);
}