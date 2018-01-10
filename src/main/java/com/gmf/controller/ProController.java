package com.gmf.controller;

import com.gmf.entity.*;
import com.gmf.service.ProService;
import com.gmf.service.UserService;
import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
public class ProController {
    @Resource
    private ProService proService;
    @Resource
    private UserService userService;
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
    public ModelAndView addPro(String proType,String supplier, String proname,String proJianma,String proPutawaydate,String zengPing,String change,HttpServletRequest request, HttpServletResponse response,MultipartFile proPurl)
    throws Exception{
        ModelAndView mav=new ModelAndView();
        System.out.println("--addPro--"+proname+",proType:"+proType+",supplier:"+supplier);
        //根据proType找到商品分类表里的类型id
       int proTypeID=proService.selTypeIdByproType(proType);
         //根据supplier找到供应商的id
        int proSupperlierID=proService.selsnameBysupplier(supplier);
        Product product=new Product();
        System.out.println(proPurl==null);
        if(proPurl!=null){
            //得到上传文件的旧名字
            String oldName=proPurl.getOriginalFilename();
            System.out.println("oldname:"+oldName);
            String newName= UUID.randomUUID()+oldName.substring(oldName.lastIndexOf("."));
            System.out.println("newName:"+newName);
            String proPath=request.getSession().getServletContext().getRealPath("/");
            //图片上传的路径
            proPath=proPath+"/images/"+newName;
            //图片显示的路径
            String proHttp=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/images/"+newName;

            File file=new File(proPath);
            if(!file.getParentFile().exists()){
                file.getParentFile().mkdirs();
            }
            //上传文件
            proPurl.transferTo(file);

            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
            String newDate = sdf.format(date);
            String regdate=newDate;
            System.out.println("date:"+regdate);

            StringBuffer sb=new StringBuffer();
            for(int i=0;i<6;i++){
                char c=(char)(int)(Math.random()*26+97);
                sb.append(c);
            }
            String salt=sb.toString();
            String proNum=proJianma+salt;

            product.setProNum(proNum);
            product.setProPurl(proPath);
            product.setProSPurl(proHttp);
            product.setRegdate(regdate);
            product.setProname(proname);
            product.setProJianma(proJianma);
            product.setProPutawaydate(proPutawaydate);
            product.setProTypeID(proTypeID);
            product.setProSupperlierID(proSupperlierID);
         //  product.setProPutawaydate(proPutawaydate);
        }
        proService.addPro(product);
        System.out.println("newProduct:"+product);
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
    public ModelAndView savePdet(String  pnum,String ddes,String chengben,String shoujia,String use, HttpServletRequest request, HttpServletResponse response, MultipartFile durl)
        throws Exception{
        System.out.println("--savePdet:oldprodet:--"+pnum);
        Prodet prodet=new Prodet();

        ModelAndView mav=new ModelAndView();
        if(durl!=null){
            String oldName=durl.getOriginalFilename();
            String newName= UUID.randomUUID()+oldName.substring(oldName.lastIndexOf("."));
            String proPath=request.getSession().getServletContext().getRealPath("/");
            //图片上传的路径
            proPath=proPath+"/images/"+newName;
            //图片显示的路径
            String proHttp=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/images/"+newName;

            //注意上传路径不要放错
          File file=new File(proPath);
          if(!file.getParentFile().exists()){
              file.getParentFile().mkdirs();
          }
          //上传文件
            durl.transferTo(file);

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
            String mxnum=newDate+salt;
            prodet.setDnum(mxnum);
            prodet.setDurl(proPath);
            prodet.setDsurl(proHttp);
            prodet.setRegdate(regdate);
            prodet.setPnum(pnum);
            prodet.setChengben(chengben);
            prodet.setShoujia(shoujia);
            prodet.setDdes(ddes);

            proService.savePdet(prodet);
            System.out.println("newProdet:"+prodet);
            mav.getModel().put("prodet",prodet);
            mav.setViewName("/selAllprodet");
        }
        return mav;
    }
    //查看所有的商品明细
    @RequestMapping("/selAllprodet")
    public ModelAndView selAllprodet(){
        ModelAndView mav=new ModelAndView();
        List<Prodet>list=proService.selAllprodet();
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

    /**
     *点击华为畅享7s proname="华为畅享7s"  pnum=proNum="HUAWEIhgjxml"
     * 根据名字查找到编码---根据商品编码查找到商品明细得到内容显示到页面上
     */
    @RequestMapping("/selOneProdet")
    public ModelAndView selOneProdet(String proname){
        System.out.println("selOneProdet:::::proname："+proname);
        ModelAndView mav=new ModelAndView();
        //根据proname查询商品编码
        String pnum=proService.selOneproNum(proname);
        System.out.println("proname:"+proname+",pnum:"+pnum);
        //根据编码查询明细
        List<Prodet> list=proService.selOneProdet(pnum);
        mav.getModel().put("list",list);
        mav.getModel().put("proname",proname);
        System.out.println("list:"+list);
        mav.setViewName("/goods.jsp");
        return mav;
    }
    /**
     * 根据Proname得到图片，然后根据选择的颜色型号进行明细查询，并显示到页面
     */
    @RequestMapping("/selOnepro")
    public ModelAndView selOnepro(String proname){
        ModelAndView mav=new ModelAndView();
        System.out.println("--selOnepro--"+proname);
        List<Product> list=proService.selOnepro(proname);
        mav.getModel().put("list",list);
        mav.getModel().put("proname",proname);
        mav.setViewName("/goods.jsp");
        return mav;
    }
    /**
     * 得到结算页面的商品名称 数量 价格
     */
    @RequestMapping("/jiesuan")
    public ModelAndView jiesuan(String miaoshu,String jine,String shuliang,String mingcheng,String danjia,HttpServletRequest request){
        ModelAndView mav=new ModelAndView();
        System.out.println("--jiesuan--jine:"+jine+",shuliang:"+shuliang+",mingcehng:"+mingcheng+",danjia:"+danjia+"::"+miaoshu);
        //把得到的数据内容传递到结算jsp页面
       //拿到保存在session里的user的编号
        HttpSession session=request.getSession();
        User user=(User) session.getAttribute("user");
        String userNum=user.getUserNum();
        System.out.println("userNum:"+userNum);
        //根据编号查询收货地址
        List<Address> address=userService.selAddByuserNum(userNum);
        mav.getModel().put("phone",user.getUserPhone());
        mav.getModel().put("username",user.getUsername());
        System.out.println("address:"+address);
        mav.getModel().put("address",address);

        Dingdan dingdan=new Dingdan();
        dingdan.setShuliang(shuliang);
        dingdan.setDanjia(danjia);
        dingdan.setJine(jine);
        dingdan.setMingcheng(mingcheng);
        dingdan.setMiaoshu(miaoshu);
        mav.getModel().put("dingdan",dingdan);
        System.out.println("dingdan:"+dingdan);
        mav.setViewName("/jiesuan.jsp");
        return mav;
    }

    //将选中的商品明细添加到购物车
    @RequestMapping("/addgwc")
    public ModelAndView addgwc(String name,String miaoshu,String shuliang,String danjia,HttpServletRequest request){
        ModelAndView mav=new ModelAndView();
        System.out.println("--addgwc--"+name+"::"+miaoshu+"::"+shuliang+"::"+danjia);
        //得到userNum
        HttpSession session=request.getSession();
        User user=(User) session.getAttribute("user");
        String userNum=user.getUserNum();
        Gwc gwc=new Gwc();
        gwc.setName(name);
        gwc.setMiaoshu(miaoshu);
        gwc.setDanjia(danjia);
        gwc.setShuliang(shuliang);
        gwc.setUserNum(userNum);
        proService.addgwc(gwc);
        System.out.println("gwc:"+gwc);
        mav.setViewName("/selAllgwc");
        return mav;
    }

    @RequestMapping("/selAllgwc")
    public ModelAndView selAllgwc (HttpServletRequest request){
        ModelAndView mav=new ModelAndView();
        //得到userNum
        HttpSession session=request.getSession();
        User user=(User) session.getAttribute("user");
        String userNum=user.getUserNum();
        List<Gwc> list=proService.selAllgwc(userNum);
        System.out.println("list:::::"+list);
        mav.getModel().put("list",list);
        mav.setViewName("/gwc.jsp");
        return mav;
    }

    //登录之后返回到show.jsp,并查询商品信息放到show.jsp
    @RequestMapping("/selAPro")
    public ModelAndView selAPro(HttpServletRequest request){
        System.out.println("--selAPro--");
        ModelAndView mav=new ModelAndView();
        //拿到用户
        HttpSession session=request.getSession();
        User user=(User) session.getAttribute("user");

        List<Product> list=proService.selAllPro();
        mav.getModel().put("list",list);
        mav.getModel().put("user",user);
        System.out.println("list::"+list+"::user::"+user);
        mav.setViewName("/show.jsp");
        return mav;
    }
    //查询所有的跳转到index.jsp
    @RequestMapping("/one")
    public ModelAndView one(HttpServletRequest request){
        System.out.println("--one--");
        ModelAndView mav=new ModelAndView();
        //拿到用户
        HttpSession session=request.getSession();
        User user=(User) session.getAttribute("user");

        List<Product> list=proService.selAllPro();
        mav.getModel().put("list",list);
        mav.getModel().put("user",user);
        System.out.println("list::"+list+"::user::"+user);
        mav.setViewName("/index.jsp");
        return mav;
    }
    //查看某个人的所有订单
    @RequestMapping("/selADingdan")
    public ModelAndView selADingdan(HttpServletRequest request){
        ModelAndView mav=new ModelAndView();
        System.out.println("--selADingdan--");
        //拿到编号
        HttpSession session=request.getSession();
        User user=(User) session.getAttribute("user");

        List<Dingdan> list=proService.selADingdan(user.getUserNum());
        mav.getModel().put("list",list);
        mav.getModel().put("user",user);
        mav.getModel().put("userNum",user.getUserNum());
        mav.setViewName("/WEB-INF/jsp/dingdan.jsp");
        return mav;
    }
    //用户提交订单
    @RequestMapping("/addDingdan")
    public ModelAndView addDingdan(HttpServletRequest request,String beizhu,String mingcheng,String danjia,String jine,String shuliang,String miaoshu, String address){
        ModelAndView mav=new ModelAndView();
        //拿到这个人的编号
        System.out.println("addDingdan::"+address);
         HttpSession session=request.getSession();
        User user=(User) session.getAttribute("user");
        Dingdan dingdan=new Dingdan();
        dingdan.setMiaoshu(miaoshu);
        dingdan.setMingcheng(mingcheng);
        dingdan.setJine(jine);
        dingdan.setDanjia(danjia);
        dingdan.setAddress(address);
        dingdan.setBeizhu(beizhu);
        dingdan.setShuliang(shuliang);
        dingdan.setUserNum(user.getUserNum());
        proService.addDingdan(dingdan);
        mav.getModel().put("user",user);
        mav.getModel().put("dingdan",dingdan);
        System.out.println("dingdan::"+dingdan+":user::"+user);
        mav.setViewName("/WEB-INF/jsp/success.jsp");
        return mav;
    }
}
