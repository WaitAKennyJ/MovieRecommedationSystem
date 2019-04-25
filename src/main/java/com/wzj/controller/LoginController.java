package com.wzj.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wzj.model.Admin;
import com.wzj.model.User;
import com.wzj.service.AdminLoginService;
import com.wzj.service.UserLoginService;
import com.wzj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.jws.soap.SOAPBinding;
import java.util.List;

/**
 * Created by kennywzj on 2019/4/19.
 */
@Controller
public class LoginController {

    @Autowired
    private UserLoginService userLoginService;
    @Autowired
    private UserService userService;
        @RequestMapping(value = "/MoviePage")
        public String MoviePage(User user,Model model){

            if (userLoginService.UserLogin(user.getUserName(),user.getPassWord())){
                user = userService.getUserByName(user.getUserName());
                model.addAttribute("user",user);
                return "MoviePage";

            }
            else return "404";
        }
    @Autowired
    private AdminLoginService adminLoginService;
        @RequestMapping("/AdminPage")
        public String AdminPage(Admin admin,Model model){
            if (admin.equals(null)) return "404";
            if (adminLoginService.AdminLogin(admin.getAdminName(),admin.getPassWord())){
                model.addAttribute("admin",admin);
                return "AdminPage";
            }
            else return "404";
        }

    @RequestMapping("/AdminPage/Movie")
    public String AdminMovie(Admin admin, Model model){
        if (admin.equals(null)) return "404";
        if (adminLoginService.AdminLogin(admin.getAdminName(),admin.getPassWord())){
            model.addAttribute("admin",admin);
            return "AdminMovieManage";
        }
        else return "404";
    }

    @RequestMapping("/AdminPage/User")
    public String AdminUser(Admin admin, Model model){
        if (admin.equals(null)) return "404";
        if (adminLoginService.AdminLogin(admin.getAdminName(),admin.getPassWord())){
            model.addAttribute("admin",admin);
            return "AdminUserManage";
        }
        else return "404";
    }
}
