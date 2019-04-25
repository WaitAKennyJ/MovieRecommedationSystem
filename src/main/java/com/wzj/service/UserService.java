package com.wzj.service;

import com.wzj.dao.UserMapper;
import com.wzj.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by kennywzj on 2019/4/22.
 */
@Service
public class UserService {
    ApplicationContext applicationContext;

    @Autowired
    UserMapper mapper;
    public List<User> getAll(){
        applicationContext = new ClassPathXmlApplicationContext("classpath:spring-mybatis.xml");
        mapper = applicationContext.getBean(UserMapper.class);
        return mapper.selectAll();

    }

    public void add(User user) {
        mapper.insert(user);
    }

    public User getUser(Integer userID) {
        return mapper.selectByPrimaryKey(userID);
    }

    public User getUserByName(String userName) {
        return mapper.selectByUserName(userName);
    }

    public void updateUser(User user) {
        mapper.updateByPrimaryKey(user);
    }

    public void deleteUser(Integer userID) {
        mapper.deleteByPrimaryKey(userID);
    }
}
