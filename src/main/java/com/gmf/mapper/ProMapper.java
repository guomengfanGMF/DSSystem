package com.gmf.mapper;

import com.gmf.entity.*;

import java.util.List;

public interface ProMapper {
    //保存商品到商品明细表
    public void addPro(Product product);
    //保存商品类型到商品分类表
    public void savePtype(Ptype ptype);
    public List<Ptype> selAllPtype();
    public int selTypeIdByproType(String proType);
    public int selsnameBysupplier(String supplier);
    public void saveSupplier(Supplier supplier);
    public List<Product> selAllPro();
    public Product selProurl(int id);
    public void savePdet(Prodet prodet);
    public List<Prodet> selAllprodet();
    public String selPdturl(int id);
    public List<Prodet> selOneProdet(String pnum);
    public String selOneproNum(String proname);
    public List<Product> selOnepro(String proname);
    //添加商品到购物车
    public void addgwc(Gwc gwc);
    //查找某个人的所有的购物车
    public List<Gwc> selAllgwc(String userNum);
    //查看用户订单
    public List<Dingdan> selADingdan(String userNum);
    //保存订单
    public void addDingdan(Dingdan dingdan);
}
