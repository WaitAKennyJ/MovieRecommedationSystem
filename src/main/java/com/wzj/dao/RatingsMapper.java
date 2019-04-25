package com.wzj.dao;

import com.wzj.model.Ratings;
import com.wzj.model.RatingsExample;
import com.wzj.model.RatingsKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface RatingsMapper {
    long countByExample(RatingsExample example);

    int deleteByExample(RatingsExample example);

    int deleteByPrimaryKey(RatingsKey key);

    int insert(Ratings record);

    int insertSelective(Ratings record);

    List<Ratings> selectByExample(RatingsExample example);

    List<Ratings> selectAll();

    Ratings selectByPrimaryKey(RatingsKey key);

    int updateByExampleSelective(@Param("record") Ratings record, @Param("example") RatingsExample example);

    int updateByExample(@Param("record") Ratings record, @Param("example") RatingsExample example);

    int updateByPrimaryKeySelective(Ratings record);

    int updateByPrimaryKey(Ratings record);
}