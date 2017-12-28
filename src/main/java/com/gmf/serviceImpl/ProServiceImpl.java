package com.gmf.serviceImpl;

import com.gmf.entity.Prodet;
import com.gmf.entity.Product;
import com.gmf.entity.Ptype;
import com.gmf.entity.Supplier;
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

    public List<Prodet> selAllprodetBypnum(Prodet prodet) {
        return proMapper.selAllprodetBypnum(prodet);
    }

    public String selPdturl(int id) {
        return proMapper.selPdturl(id);
    }

}
