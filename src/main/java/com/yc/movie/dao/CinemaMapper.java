package com.yc.movie.dao;

import com.yc.movie.bean.Cinema;
import com.yc.movie.bean.CinemaExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CinemaMapper {
    long countByExample(CinemaExample example);

    int deleteByExample(CinemaExample example);

    int deleteByPrimaryKey(Integer cinemaId);

    int insert(Cinema record);

    int insertSelective(Cinema record);

    List<Cinema> selectByExample(CinemaExample example);

    Cinema selectByPrimaryKey(Integer cinemaId);

    int updateByExampleSelective(@Param("record") Cinema record, @Param("example") CinemaExample example);

    int updateByExample(@Param("record") Cinema record, @Param("example") CinemaExample example);

    int updateByPrimaryKeySelective(Cinema record);

    int updateByPrimaryKey(Cinema record);

	List<Cinema> selectCinemaAllByKeywords(@Param("area")String area,@Param("name") String name,@Param("hall") String hall);
}