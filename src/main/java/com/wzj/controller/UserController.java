package com.wzj.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wzj.model.Msg;
import com.wzj.model.User;
import com.wzj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by kennywzj on 2019/4/22.
 */
@Controller
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping(value = "/UserInfo")
    @ResponseBody
    public Msg AdminAllUser(@RequestParam(value = "page",defaultValue = "1")int page, Model model){

//        引入分页插件,传入页码以及每页大小
        PageHelper.startPage(page,10);
        List<User> userList = userService.getAll();
//        使用PageInfo包装,连续显示10页
        PageInfo pageInfo = new PageInfo(userList,5);
//        model.addAttribute("UserInfo",pageInfo);
        return Msg.succuess().add("pageInfo",pageInfo);

    }

    @RequestMapping(value = "/User",method = RequestMethod.POST)
    @ResponseBody
    public Msg AddUser(User user){
        userService.add(user);
        return Msg.succuess();

    }

    @RequestMapping(value = "/User/{userID}",method = RequestMethod.GET)
    @ResponseBody
    public Msg getUser(@PathVariable("userID") Integer userID){
        User user = userService.getUser(userID);
        return Msg.succuess().add("user",user);
    }

    @RequestMapping(value = "/User/{userID}",method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateUser(User user){
        userService.updateUser(user);
        return Msg.succuess().add("moive",user);
    }

    @RequestMapping(value = "/User/{userID}",method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteUser(@PathVariable("userID")Integer userID){
        userService.deleteUser(userID);
        return Msg.succuess();
    }

    @RequestMapping(value = "/UserByName",method = RequestMethod.GET)
    @ResponseBody
    public Msg getUserByName(@RequestParam("userName") String userName){
        User user = userService.getUserByName(userName);
        return Msg.succuess().add("user",user);
    }
}
