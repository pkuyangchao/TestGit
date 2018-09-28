package com.yc.movie.dao;

import com.yc.movie.bean.Search;
import com.yc.movie.bean.SearchExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SearchMapper {
    long countByExample(SearchExample example);

    int deleteByExample(SearchExample example);

    int deleteByPrimaryKey(Integer searchId);

    int insert(Search record);

    int insertSelective(Search record);

    List<Search> selectByExample(SearchExample example);

    Search selectByPrimaryKey(Integer searchId);

    int updateByExampleSelective(@Param("record") Search record, @Param("example") SearchExample example);

    int updateByExample(@Param("record") Search record, @Param("example") SearchExample example);

    int updateByPrimaryKeySelective(Search record);

    int updateByPrimaryKey(Search record);
}