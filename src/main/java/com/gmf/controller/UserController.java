package com.gmf.controller;

import com.gmf.entity.Address;
import com.gmf.entity.City;
import com.gmf.entity.Province;
import com.gmf.entity.User;
import com.gmf.service.UserService;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {

    @Resource
    private UserService userService;
    @RequestMapping("/login")
    public  void login(HttpServletResponse response, HttpServletRequest request) throws Exception{
        System.out.println("--login--");
      /*  String username=request.getParameter("username");
        System.out.println("username:"+username);
        HttpSession session=request.getSession();
        session.setAttribute("username",username);*/
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
    //判断账号是否已存在
   @RequestMapping("/zh")
    public @ResponseBody String zh( String username) throws Exception{
       System.out.println("--zh--");
        String name=userService.selUserByname(username);
       System.out.println("username:"+username+"name:"+name);
        if(name!=null){
         name=new String(name.getBytes("ISO-8859-1"),"utf-8");
        }
        String returnString="";
        returnString="已存在";
        return returnString;
    }
    //修改个人信息
    @RequestMapping("/updateOne")
    public ModelAndView updateOne(String password,String userBirth,String userEmail,String userPhone,User user1,HttpServletRequest request){
        ModelAndView mav=new ModelAndView();
        HttpSession session=request.getSession();
        User user=(User) session.getAttribute("user");
        System.out.println("username:"+user.getUsername());
        System.out.println("password===="+password);
        user1.setUsername(user.getUsername());
        user1.setPassword(password);
        user1.setUserBirth(userBirth);
        user1.setUserEmail(userEmail);
        user1.setUserPhone(userPhone);
        userService.updateOne(user1);
        mav.getModel().put("user",user1);
        mav.setViewName("/myself.jsp");
        return mav;
    }
    //查看个人地址信息
    @RequestMapping("/selAddByunum")
    public ModelAndView selAddByunum(String unum,HttpServletRequest request ){
        ModelAndView mav=new ModelAndView();
        HttpSession session=request.getSession();
        User user=(User) session.getAttribute("user");
        unum=user.getUserNum();
        System.out.println("unum:"+unum);
        List<Address> list=userService.selAddByunum(unum);
        System.out.println("list:"+list);
        mav.getModel().put("list",list);
        mav.setViewName("/WEB-INF/jsp/allAdd.jsp");
        return mav;
    }
    //添加地址信息--是否设置为默认地址信息
    @RequestMapping("/addAddbyunum")
    public ModelAndView addAddbyunum(Address address,HttpServletRequest request ){
        ModelAndView mav=new ModelAndView();
        System.out.println("oldAddress:"+address);
        HttpSession session=request.getSession();
        User user=(User) session.getAttribute("user");
        System.out.println("username:"+user.getUserNum());
        String unum=user.getUserNum();

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        String newDate = sdf.format(date);

        address.setUserNum(unum);
        address.setRegdate(newDate);
        System.out.println("newAddress:"+address);
        userService.addAddbyunum(address);
        mav.setViewName("/selAddByunum");
        return mav;
    }
    //修改地址信息
    @RequestMapping("/updateAddByunum")
    public ModelAndView updateAddByunum(Address address,HttpServletRequest request ){
        ModelAndView mav=new ModelAndView();
        System.out.println("oldAddress:"+address);
        HttpSession session=request.getSession();
        User user=(User) session.getAttribute("user");
        System.out.println("username:"+user.getUserNum()+"id:"+address.getId());
        String unum=user.getUserNum();

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        String newDate = sdf.format(date);

        address.setUserNum(unum);
        address.setRegdate(newDate);
        //根据id进行修改
        userService.updateAddByunum(address);
        mav.setViewName("/selAddByunum");
        return mav;
    }
    //删除地址信息
    @RequestMapping("/delAddByunum")
    public ModelAndView delAddByunum(int id ){
        ModelAndView mav=new ModelAndView();
        System.out.println("id=====:"+id);
        userService.delAddByunum(id);
        mav.setViewName("/selAddByunum");
        return mav;
    }

    // 查询省份
    @RequestMapping("/province")
    public String province(HttpServletResponse response) throws IOException {
        //查询省份保存在list中
        List<Province> plist = userService.findAllProvince();
        //转换为JSONArray数组
       JSONArray pjson = new JSONArray(plist);
        //并返回给Ajax值
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;character=utf-8");
        response.getWriter().print(pjson);
        return null;
    }
    // 查询城市
    @RequestMapping("/city")
    public String city(HttpServletResponse response,String provincename ) throws IOException {
        System.out.println("city");
        //根据选中的省份属性，查询出城市
        List<City> clist = userService.findAllCityByProvincename(provincename);
        System.out.println(clist);
        JSONArray cjson = new JSONArray(clist);
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;character=utf-8");
        response.getWriter().print(cjson);
        return null;
    }



}
