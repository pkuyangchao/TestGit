package com.yc.movie.dao;

import com.yc.movie.bean.BrowsingHistory;
import com.yc.movie.bean.BrowsingHistoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BrowsingHistoryMapper {
    long countByExample(BrowsingHistoryExample example);

    int deleteByExample(BrowsingHistoryExample example);

    int deleteByPrimaryKey(Integer browsingId);

    int insert(BrowsingHistory record);

    int insertSelective(BrowsingHistory record);

    List<BrowsingHistory> selectByExample(BrowsingHistoryExample example);

    BrowsingHistory selectByPrimaryKey(Integer browsingId);

    int updateByExampleSelective(@Param("record") BrowsingHistory record, @Param("example") BrowsingHistoryExample example);

    int updateByExample(@Param("record") BrowsingHistory record, @Param("example") BrowsingHistoryExample example);

    int updateByPrimaryKeySelective(BrowsingHistory record);

    int updateByPrimaryKey(BrowsingHistory record);
}