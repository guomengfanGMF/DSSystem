package com.gmf.serviceImpl;

import com.gmf.entity.Product;
import com.gmf.entity.Ptype;
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

    public List<Product> selAllPro() {
        return proMapper.selAllPro();
    }
}
