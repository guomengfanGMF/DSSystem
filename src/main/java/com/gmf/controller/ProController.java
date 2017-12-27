package com.gmf.controller;

import com.gmf.entity.Product;
import com.gmf.entity.Ptype;
import com.gmf.service.ProService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
public class ProController {
    @Resource
    private ProService proService;

    /**
     *商品分类表--商品信息表--商品明细表
     */
    //向商品分类表pro_ptype添加分类
    @RequestMapping("/savePtype")
    public ModelAndView savePtype(Ptype ptype){
        System.out.println("--savePtype--"+ptype);
        ModelAndView mav=new ModelAndView();

        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        String newDate = sdf.format(date);
        String regDate=newDate;
        System.out.println("date:"+regDate);

        String typeNum="1";

        ptype.setRegDate(regDate);
        ptype.setTypeNum(typeNum);
        proService.savePtype(ptype);
        System.out.println("newPtype:"+ptype);
        mav.setViewName("/selAllPtype");
        return mav;
    }
    //从商品分类表pro_ptype内查询所有的分类
    @RequestMapping("/selAllPtype")
    public ModelAndView selAllPtype(){
        ModelAndView mav=new ModelAndView();
        List<Ptype> list=proService.selAllPtype();
        mav.getModel().put("list",list);
        mav.setViewName("/index2.jsp");
        return mav;
    }
    //往商品信息表pro_product中添加商品
    @RequestMapping("/addPro")
    public ModelAndView addPro(Product product, HttpServletRequest request, HttpServletResponse response, MultipartFile proPurl){
        ModelAndView mav=new ModelAndView();
        System.out.println("--addPro--"+product);
        if(proPurl!=null){
            //得到上传文件的旧名字
            String oldName=proPurl.getOriginalFilename();
            String newName= UUID.randomUUID()+oldName.substring(oldName.lastIndexOf("."));
            String proPath=request.getSession().getServletContext().getRealPath("/");
            //图片上传的路径
            proPath=proPath+"/images/"+newName;
            //图片显示的路径
            String proHttp=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/images/"+newName;

            File file=new File(proHttp);
            if(!file.getParentFile().exists()){
                file.getParentFile().mkdirs();
            }

            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
            String newDate = sdf.format(date);
            String regdate=newDate;
            System.out.println("date:"+regdate);

            int proTypeID=1;
            int proSupperlierID=1;

            StringBuffer sb=new StringBuffer();
            for(int i=0;i<6;i++){
                char c=(char)(int)(Math.random()*26+97);
                sb.append(c);
            }
            String salt=sb.toString();
            String proNum=product.getProJianma()+salt;

            product.setProNum(proNum);
            product.setProPurl(proPath);
            product.setProSPurl(proHttp);
            product.setRegdate(regdate);
            product.setProTypeID(proTypeID);
            product.setProSupperlierID(proSupperlierID);
        }
        proService.addPro(product);
        mav.setViewName("/selAllPro");
        return mav;
    }

    @RequestMapping("/selAllPro")
    public ModelAndView selAllPro(){
        ModelAndView mav=new ModelAndView();


        return mav;
    }
}
