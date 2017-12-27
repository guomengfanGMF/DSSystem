package com.gmf.controller;

import com.gmf.service.ProService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
public class ProController {
    @Resource
    private ProService proService;

    /**
     *商品分类表--商品信息表--商品明细表
     */
    //往商品信息表pro_product中添加商品
    @RequestMapping("/addPro")
    public ModelAndView addPro(){
        ModelAndView mav=new ModelAndView();

        mav.setViewName("/WEB-INF/jsp/success.jsp");
        return mav;
    }
    //向商品分类表pro_ptype添加分类
    @RequestMapping("savePtype")
    public ModelAndView savePtype(){
        ModelAndView mav=new ModelAndView();
        String typeNum="1";

        return mav;
    }
    //从商品分类表pro_ptype内查询所有的分类
    @RequestMapping("selAllPtype")
    public ModelAndView selAllPtype(){
        ModelAndView mav=new ModelAndView();


        return mav;
    }
}
