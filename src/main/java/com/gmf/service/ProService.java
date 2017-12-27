package com.gmf.service;

import com.gmf.entity.Product;
import com.gmf.entity.Ptype;

import java.util.List;

public interface ProService {
    public void addPro(Product product);
    public void savePtype(Ptype ptype);
    public List<Ptype> selAllPtype();
    public List<Product> selAllPro();
}
