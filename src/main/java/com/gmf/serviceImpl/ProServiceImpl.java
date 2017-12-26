package com.gmf.serviceImpl;

import com.gmf.entity.Product;
import com.gmf.mapper.ProMapper;
import com.gmf.service.ProService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("proService")
public class ProServiceImpl implements ProService {
    @Resource
    private ProMapper proMapper;
    public void savePro(Product product) {
        proMapper.savePro(product);
    }
}
