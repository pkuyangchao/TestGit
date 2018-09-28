package com.yc.movie.dao;

import com.yc.movie.bean.Ticked;
import com.yc.movie.bean.TickedExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TickedMapper {
    long countByExample(TickedExample example);

    int deleteByExample(TickedExample example);

    int deleteByPrimaryKey(Integer tickedId);

    int insert(Ticked record);

    int insertSelective(Ticked record);

    List<Ticked> selectByExample(TickedExample example);

    Ticked selectByPrimaryKey(Integer tickedId);

    int updateByExampleSelective(@Param("record") Ticked record, @Param("example") TickedExample example);

    int updateByExample(@Param("record") Ticked record, @Param("example") TickedExample example);

    int updateByPrimaryKeySelective(Ticked record);

    int updateByPrimaryKey(Ticked record);
}