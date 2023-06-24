/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.service;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.ChiTietSanPham;
import com.example.duanxuonglv2_nhom5_nguyenvv4.repository.ChiTietSanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChiTietSanPhamService implements IChiTietSanPhamService {

    @Autowired
    private ChiTietSanPhamRepository repository;

    @Override
    public List<ChiTietSanPham> getAll() {
        return repository.findAll();
    }

    @Override
    public void save(ChiTietSanPham chiTietSanPham) {
        repository.save(chiTietSanPham);
    }

    @Override
    public void delete(ChiTietSanPham chiTietSanPham) {
        repository.delete(chiTietSanPham);
    }

    @Override
    public void saveAll(List<ChiTietSanPham> lstCTSP) {
        repository.saveAll(lstCTSP);
    }
}
