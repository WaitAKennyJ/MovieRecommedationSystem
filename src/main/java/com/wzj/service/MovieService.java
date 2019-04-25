package com.wzj.service;

import com.wzj.dao.MovieMapper;
import com.wzj.mahout.mahoutJdbcUser;
import com.wzj.model.Admin;
import com.wzj.model.Movie;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;

/**
 * Created by kennywzj on 2019/4/20.
 */
@Service
public class MovieService {

    ApplicationContext applicationContext;

    @Autowired
    MovieMapper mapper;
    public List<Movie> getAll(){
        applicationContext = new ClassPathXmlApplicationContext("classpath:spring-mybatis.xml");
        mapper = applicationContext.getBean(MovieMapper.class);
        return mapper.selectAll();

    }

    public void add(Movie movie) {
        mapper.insert(movie);
    }

    public Movie getMovie(Integer movieID) {
        return mapper.selectByPrimaryKey(movieID);
    }

    public void updateMovie(Movie movie) {
        mapper.updateByPrimaryKey(movie);
    }

    public void deleteMovie(Integer movieID) {
        mapper.deleteByPrimaryKey(movieID);
    }

    public List<RecommendedItem> userRecommend(Integer userID) throws TasteException {
        return new mahoutJdbcUser().userRecommendation(userID);
    }
}
