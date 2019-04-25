package com.wzj.service;


import com.wzj.dao.AdminMapper;
import com.wzj.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by kennywzj on 2019/4/19.
 */
@Service
public class AdminLoginService {
    private ApplicationContext applicationContext;

    @Autowired
    private AdminMapper mapper;

    public boolean AdminLogin(String adminName,String passWord){
        // 加载spring配置文件
        applicationContext = new ClassPathXmlApplicationContext("classpath:spring-mybatis.xml");
        // 导入需要测试的
        mapper = applicationContext.getBean(AdminMapper.class);

        Admin admin = mapper.selectByPrimaryKey(adminName);
        if (passWord.equals(admin.getPassWord())) return true;
        else return false;
    }

 }
