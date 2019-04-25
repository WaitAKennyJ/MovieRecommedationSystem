package com.wzj.service;

import com.wzj.dao.AdminMapper;
import com.wzj.dao.UserMapper;
import com.wzj.model.Admin;
import com.wzj.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

/**
 * Created by kennywzj on 2019/4/19.
 */
@Service
public class UserLoginService {
    private ApplicationContext applicationContext;

    @Autowired
    private UserMapper mapper;

    public boolean UserLogin(String userName,String passWord){
        // 加载spring配置文件
        applicationContext = new ClassPathXmlApplicationContext("classpath:spring-mybatis.xml");
        // 导入需要测试的
        mapper = applicationContext.getBean(UserMapper.class);

        User user = mapper.selectByUserName(userName);
        if (passWord.equals(user.getPassWord())) return true;
        else return false;
    }
}
