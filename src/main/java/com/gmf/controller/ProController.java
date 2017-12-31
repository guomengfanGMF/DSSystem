package com.gmf.controller;

import com.gmf.entity.Prodet;
import com.gmf.entity.Product;
import com.gmf.entity.Ptype;
import com.gmf.entity.Supplier;
import com.gmf.service.ProService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    //向商品分类表pro_ptype添加分类,得到下拉列表选中的typeName
    @RequestMapping("/savePtype")
    public ModelAndView savePtype(Ptype ptype, Supplier supplier){
        System.out.println("--savePtype:oldptype:--"+ptype+":oldsupplier:"+supplier);
        ModelAndView mav=new ModelAndView();
        /**
         * 得到供货商 和 注册公司
         */
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        String newDate = sdf.format(date);
        String regDate=newDate;
        System.out.println("date:"+regDate);
        //保存到供应商表
         supplier.setRegdate(regDate);
         String snum=supplier.getSname()+supplier.getScommpany();
         supplier.setSnum(snum);
        System.out.println("newSupplier:"+supplier);
         proService.saveSupplier(supplier);
        //保存到商品分类表
        if("手机/数码".equals(ptype.getTypeName())){
            String typeNum="sj/sm";
            ptype.setTypeNum(typeNum);
        }else if("家具/家居".equals(ptype.getTypeName())){
            String typeNum="jiajv/jiajv";
            ptype.setTypeNum(typeNum);
        }else if("服饰".equals(ptype.getTypeName())){
            String typeNum="fushi";
            ptype.setTypeNum(typeNum);
        }
        ptype.setRegDate(regDate);

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
    public ModelAndView addPro( String proname,String proJianma,String proPutawaydate,String zengPing,String change,HttpServletRequest request, HttpServletResponse response, @RequestParam(name = "proPurl",required = false) MultipartFile proPurl){
        ModelAndView mav=new ModelAndView();
        System.out.println("--addPro--");
        //根据proType找到商品分类表里的类型id
       //  int proTypeID=proService.selTypeIdByproType(proType);
         //根据supplier找到供应商的id
         //int proSupperlierID=proService.selsnameBysupplier(supplier);
         Product product=new Product();
        System.out.println(proPurl==null);
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

            /**
             *保存商品信息表时：供应商
             * 从addPro.jsp页面得到用户所选择的供应商（下拉列表）
             * 如果是个人就选个人
             * 如果是公司就判断是什么公司，从供应商表里得到供应商ID
             * proSupperlierID
             */


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
            product.setProname(proname);
            product.setProJianma(proJianma);
            product.setProPutawaydate(proPutawaydate);
            product.setChange(change);
            product.setZengPing(zengPing);
          //  product.setProTypeID(proTypeID);
           // product.setProSupperlierID(proSupperlierID);
        }
        proService.addPro(product);
        mav.setViewName("/selAllPro");
        return mav;
    }

    @RequestMapping("/selAllPro")
    public ModelAndView selAllPro(){
        ModelAndView mav=new ModelAndView();
        List<Product> list=proService.selAllPro();
        mav.getModel().put("list",list);
        mav.setViewName("/WEB-INF/jsp/selAllpro.jsp");
        return mav;
    }

    /**
     * selAllpro.jsp页面查看商品信息表的展示图片proSPurl
     * 同展示图片在后面添加商品明细表里的内容
     */

    @RequestMapping("/selProurl")
    public ModelAndView selProurl(int id){
        ModelAndView mav=new ModelAndView();
         Product product=proService.selProurl(id);
        mav.getModel().put("product",product);
        mav.setViewName("/WEB-INF/jsp/addDet.jsp");
        return mav;
    }
    @RequestMapping("/savePdet")
    public ModelAndView savePdet(Prodet prodet, HttpServletRequest request, HttpServletResponse response, MultipartFile durl){
        System.out.println("--savePdet:oldprodet:--"+prodet);
        ModelAndView mav=new ModelAndView();
        if(durl!=null){
            String oldName=durl.getOriginalFilename();
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
           //商品明细编码=salt
            StringBuffer sb=new StringBuffer();
            for(int i=0;i<6;i++){
                char c=(char)(int)(Math.random()*26+97);
                sb.append(c);
            }
            String salt=sb.toString();
            prodet.setDnum(salt);
            prodet.setDurl(proPath);
            prodet.setDsurl(proHttp);
            prodet.setRegdate(regdate);

            proService.savePdet(prodet);
            System.out.println("newProdet:"+prodet);
            mav.getModel().put("prodet",prodet);
            mav.setViewName("/selAllprodetBypnum");
        }
        return mav;
    }

    @RequestMapping("/selAllprodetBypnum")
    public ModelAndView selAllprodetBypnum(Prodet prodet){
        ModelAndView mav=new ModelAndView();
        List<Prodet>list=proService.selAllprodetBypnum(prodet);
        mav.getModel().put("list",list);
        mav.setViewName("/WEB-INF/jsp/showDet.jsp");
        return mav;
    }
    @RequestMapping("/selPdturl")
    public ModelAndView selPdturl(int id){
        ModelAndView mav=new ModelAndView();
        String dsurl=proService.selPdturl(id);
        mav.getModel().put("dsurl",dsurl);
        mav.setViewName("/WEB-INF/jsp/dsurl.jsp");
        return mav;
    }
}
