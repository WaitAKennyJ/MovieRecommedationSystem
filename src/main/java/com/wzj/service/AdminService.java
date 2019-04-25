package com.wzj.service;

import com.wzj.dao.AdminMapper;
import com.wzj.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by kennywzj on 2019/4/21.
 */
@Service
public class AdminService {
    private ApplicationContext context;

    @Autowired
    private AdminMapper mapper;

    public List<Admin> getAll(){
        context = new ClassPathXmlApplicationContext("classpath:spring-mybatis.xml");
        mapper = context.getBean(AdminMapper.class);

        return mapper.findAll();

    }

    public boolean add(Admin admin){
        if (mapper.insert(admin) == 1) return true;
        else return false;
    }


    public Admin getAdmin(String adminName){
        return mapper.selectByPrimaryKey(adminName);
    }

    public boolean updateAdmin(Admin admin){
        if (mapper.updateByPrimaryKey(admin) == 1) return true;
        else return false;
    }

    public void deleteAdmin(String adminName){
        mapper.deleteByPrimaryKey(adminName);

    }
}
