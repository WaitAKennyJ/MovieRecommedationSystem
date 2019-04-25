package com.wzj.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wzj.model.Admin;
import com.wzj.model.Msg;
import com.wzj.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by kennywzj on 2019/4/21.
 */
@Controller
public class AdminController {
    @Autowired
    AdminService adminService;

    @RequestMapping(value = "/AdminInf")
    public String AdminInfo(@RequestParam(value = "page",defaultValue = "1")int page, Model model){

//        引入分页插件,传入页码以及每页大小
        PageHelper.startPage(page,5);
        List<Admin> adminList = adminService.getAll();
//        使用PageInfo包装,连续显示10页
        PageInfo pageInfo = new PageInfo(adminList,5);
        model.addAttribute("pageInfo",pageInfo);
        return "AdminPageInf";

    }

    @RequestMapping("/AdminInfo")
    @ResponseBody
    public Msg AdminJsonInfo(@RequestParam(value = "page",defaultValue = "1")int page){

//        引入分页插件,传入页码以及每页大小
        PageHelper.startPage(page,5);
        List<Admin> adminList = adminService.getAll();
//        使用PageInfo包装,连续显示10页
        PageInfo pageInfo = new PageInfo(adminList,5);
        return Msg.succuess().add("pageInfo",pageInfo);

    }

    @RequestMapping(value = "/Admin",method = RequestMethod.POST)
    @ResponseBody
    public Msg AddAdmin(Admin admin){
        if (adminService.add(admin)) return Msg.succuess();
        else return null;
    }

    @RequestMapping(value = "/Admin/{adminName}",method = RequestMethod.GET)
    @ResponseBody
    public Msg getAdmin(@PathVariable("adminName") String adminName){
        Admin admin = adminService.getAdmin(adminName);
        return Msg.succuess().add("admin",admin);
    }

    @RequestMapping(value = "/Admin/{adminName}",method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateAdmin(Admin admin){
        adminService.updateAdmin(admin);
        return Msg.succuess().add("admin",admin);
    }

    @RequestMapping(value = "/Admin/{adminName}",method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteAdmin(@PathVariable("adminName")String adminName){
        System.out.println("===========删除的名字是:"+adminName);
        adminService.deleteAdmin(adminName);
        return Msg.succuess();
    }
}
