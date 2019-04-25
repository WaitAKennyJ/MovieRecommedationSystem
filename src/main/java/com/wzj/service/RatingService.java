package com.wzj.service;

import com.wzj.dao.RatingsMapper;
import com.wzj.model.Ratings;
import com.wzj.model.RatingsKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by kennywzj on 2019/4/23.
 */
@Service
public class RatingService {
    ApplicationContext applicationContext;

    @Autowired
    RatingsMapper mapper;
    public List<Ratings> getAll(){
        applicationContext = new ClassPathXmlApplicationContext("classpath:spring-mybatis.xml");
        mapper = applicationContext.getBean(RatingsMapper.class);
        return mapper.selectAll();

    }

    public void add(Ratings rating) {
        mapper.insert(rating);
    }

    public Ratings getRatings(RatingsKey ratingsKey) {
        return mapper.selectByPrimaryKey(ratingsKey);
    }

    public void updateRatings(Ratings rating) {
        mapper.updateByPrimaryKey(rating);
    }

    public void deleteRatings(RatingsKey ratingsKey) {
        mapper.deleteByPrimaryKey(ratingsKey);
    }
}
