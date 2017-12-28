package com.gmf.service;

import com.gmf.entity.Prodet;
import com.gmf.entity.Product;
import com.gmf.entity.Ptype;
import com.gmf.entity.Supplier;

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
    public List<Prodet> selAllprodetBypnum(Prodet prodet);
    public String selPdturl(int id);
}
