package com.wzj.dao;

import com.wzj.model.Recommendation;
import com.wzj.model.RecommendationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RecommendationMapper {
    long countByExample(RecommendationExample example);

    int deleteByExample(RecommendationExample example);

    int deleteByPrimaryKey(Integer userID);

    int insert(Recommendation record);

    int insertSelective(Recommendation record);

    List<Recommendation> selectByExample(RecommendationExample example);

    Recommendation selectByPrimaryKey(Integer userID);

    int updateByExampleSelective(@Param("record") Recommendation record, @Param("example") RecommendationExample example);

    int updateByExample(@Param("record") Recommendation record, @Param("example") RecommendationExample example);

    int updateByPrimaryKeySelective(Recommendation record);

    int updateByPrimaryKey(Recommendation record);
}