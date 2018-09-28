package com.yc.movie.dao;

import com.yc.movie.bean.Language;
import com.yc.movie.bean.LanguageExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface LanguageMapper {
    long countByExample(LanguageExample example);

    int deleteByExample(LanguageExample example);

    int deleteByPrimaryKey(Integer languageId);

    int insert(Language record);

    int insertSelective(Language record);

    List<Language> selectByExample(LanguageExample example);

    Language selectByPrimaryKey(Integer languageId);

    int updateByExampleSelective(@Param("record") Language record, @Param("example") LanguageExample example);

    int updateByExample(@Param("record") Language record, @Param("example") LanguageExample example);

    int updateByPrimaryKeySelective(Language record);

    int updateByPrimaryKey(Language record);
}