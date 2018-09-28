package com.yc.movie.dao;

import com.yc.movie.bean.Movie;
import com.yc.movie.bean.MovieExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MovieMapper {
    long countByExample(MovieExample example);

    int deleteByExample(MovieExample example);

    int deleteByPrimaryKey(Integer movieId);

    int insert(Movie record);

    int insertSelective(Movie record);

    List<Movie> selectByExampleWithBLOBs(MovieExample example);

    List<Movie> selectByExample(MovieExample example);
    
    List<Movie> selectByKeyWordWithBLOBs(String keyword);
    
    Movie selectByPrimaryKey(Integer movieId);
    
    int updateByExampleSelective(@Param("record") Movie record, @Param("example") MovieExample example);

    int updateByExampleWithBLOBs(@Param("record") Movie record, @Param("example") MovieExample example);

    int updateByExample(@Param("record") Movie record, @Param("example") MovieExample example);

    int updateByPrimaryKeySelective(Movie record);

    int updateByPrimaryKeyWithBLOBs(Movie record);

    int updateByPrimaryKey(Movie record);

	List<Movie> orderShowtimeBySelectKeyWord(String string);

	List<Movie> orderGradeBySelectKeyWord(String string);

	List<Movie> orderCommentBySelectKeyWord(String string);

	List<Movie> selectMovieAllByKeywords(@Param("typekey")String typekey, @Param("languagekey")String languagekey, 
			@Param("time1")String time1,@Param("time2")String time2,
			@Param("countrykey")String countrykey, @Param("actorkey")String actorkey);
	
	List<Movie> selectMovieAllByKeywordsOrderShowtime(@Param("typekey")String typekey, @Param("languagekey")String languagekey, 
			@Param("time1")String time1,@Param("time2")String time2,
			@Param("countrykey")String countrykey, @Param("actorkey")String actorkey);
	
	List<Movie> selectMovieAllByKeywordsOrderGrade(@Param("typekey")String typekey, @Param("languagekey")String languagekey, 
			@Param("time1")String time1,@Param("time2")String time2,
			@Param("countrykey")String countrykey, @Param("actorkey")String actorkey);
	
	List<Movie> selectMovieAllByKeywordsOrderComment(@Param("typekey")String typekey, @Param("languagekey")String languagekey,
			@Param("time1")String time1,@Param("time2")String time2,
			@Param("countrykey")String countrykey, @Param("actorkey")String actorkey);
    
   
    
}