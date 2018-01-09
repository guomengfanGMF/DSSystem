package com.gmf.serviceImpl;

import com.gmf.entity.*;
import com.gmf.mapper.ProMapper;
import com.gmf.service.ProService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("proService")
public class ProServiceImpl implements ProService {
    @Resource
    private ProMapper proMapper;
    public void addPro(Product product) {
        proMapper.addPro(product);
    }

    public void savePtype(Ptype ptype) {
        proMapper.savePtype(ptype);
    }

    public List<Ptype> selAllPtype() {
        return proMapper.selAllPtype();
    }

    public int selTypeIdByproType(String proType) {
        return proMapper.selTypeIdByproType(proType);
    }

    public int selsnameBysupplier(String supplier) {
        return proMapper.selsnameBysupplier(supplier);
    }

    public void saveSupplier(Supplier supplier) {
        proMapper.saveSupplier(supplier);
    }

    public List<Product> selAllPro() {
        return proMapper.selAllPro();
    }

    public Product selProurl(int id) {
        return proMapper.selProurl(id);
    }

    public void savePdet(Prodet prodet) {
        proMapper.savePdet(prodet);
    }

    public List<Prodet> selAllprodet() {
        return proMapper.selAllprodet();
    }

    public String selPdturl(int id) {
        return proMapper.selPdturl(id);
    }

    public List<Prodet> selOneProdet(String pnum) {
        return proMapper.selOneProdet(pnum);
    }

    public String selOneproNum(String proname) {
        System.out.println("--ServiceImpl--"+proMapper.selOneproNum(proname));
        return proMapper.selOneproNum(proname);
    }

    public List<Product> selOnepro(String proname) {
        return proMapper.selOnepro(proname);
    }

    public void addgwc(Gwc gwc) {
        proMapper.addgwc(gwc);
    }

    public List<Gwc> selAllgwc(String userNum) {
        return proMapper.selAllgwc(userNum);
    }

}
