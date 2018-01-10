package com.gmf.service;

import com.gmf.entity.*;

import java.util.List;

public interface ProService {
    public void addPro(Product product);
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
    public void addgwc(Gwc gwc);
    public List<Gwc> selAllgwc(String userNum);
    public List<Dingdan> selADingdan(String userNum);
    public void addDingdan(Dingdan dingdan);
}
