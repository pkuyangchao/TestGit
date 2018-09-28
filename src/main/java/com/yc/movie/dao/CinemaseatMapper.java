package com.yc.movie.dao;

import com.yc.movie.bean.Cinemaseat;
import com.yc.movie.bean.CinemaseatExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CinemaseatMapper {
    long countByExample(CinemaseatExample example);

    int deleteByExample(CinemaseatExample example);

    int deleteByPrimaryKey(Integer seatId);

    int insert(Cinemaseat record);

    int insertSelective(Cinemaseat record);

    List<Cinemaseat> selectByExample(CinemaseatExample example);

    Cinemaseat selectByPrimaryKey(Integer seatId);

    int updateByExampleSelective(@Param("record") Cinemaseat record, @Param("example") CinemaseatExample example);

    int updateByExample(@Param("record") Cinemaseat record, @Param("example") CinemaseatExample example);

    int updateByPrimaryKeySelective(Cinemaseat record);

    int updateByPrimaryKey(Cinemaseat record);
}