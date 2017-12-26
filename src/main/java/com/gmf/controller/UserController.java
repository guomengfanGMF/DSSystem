package com.gmf.controller;

import com.gmf.entity.User;
import com.gmf.service.UserService;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class UserController {
    @Resource
    private UserService userService;
    @RequestMapping("/login")
    public void login(HttpServletResponse response, HttpServletRequest request) throws Exception{
        System.out.println("--login--");

        //登录失败之后才跳转
        request.getRequestDispatcher("/login.jsp").forward(request,response);
    }
    @RequestMapping("/reg")
    public ModelAndView reg(User user){
        System.out.println("--reg--");
        ModelAndView mav=new ModelAndView();
        System.out.println("--reg--"+"oldUser:"+user);

        StringBuffer sb=new StringBuffer();
        for(int i=0;i<6;i++){
            char c=(char)(int)(Math.random()*26+97);
            sb.append(c);
        }
        String salt=sb.toString();
        SimpleHash sh=new SimpleHash("MD5",user.getPassword(),salt,3);
        String password=sh.toString();

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        String newDate = sdf.format(date);
        String userNum=newDate+salt;
        String userRegdate=newDate;
        System.out.println("date:"+newDate+",userNum:"+userNum);

        int userType=1;
        int userCredits=0;
        int userBalance=0;
        int userTotalmoney=0;
        int mainAddressID=1;

        user.setUserRegdate(userRegdate);
        user.setUserNum(userNum);
        user.setPassword(password);
        user.setSalt(salt);
        user.setUserType(userType);
        user.setUserCredits(userCredits);
        user.setUserBalance(userBalance);
        user.setUserTotalmoney(userTotalmoney);
        user.setMainAddressID(mainAddressID);
        System.out.println("---newUser：--"+user);
        userService.saveUser(user);


        mav.getModel().put("user",user);
        mav.setViewName("/WEB-INF/jsp/success.jsp");
        return mav;
    }
}
