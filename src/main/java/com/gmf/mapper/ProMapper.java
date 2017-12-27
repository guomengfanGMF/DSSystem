package com.gmf.mapper;

import com.gmf.entity.Product;
import com.gmf.entity.Ptype;

import java.util.List;

public interface ProMapper {
    //保存商品到商品明细表
    public void addPro(Product product);
    //保存商品类型到商品分类表
    public void savePtype(Ptype ptype);
    public List<Ptype> selAllPtype();
    public List<Product> selAllPro();
}
