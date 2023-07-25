/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.service;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.ChiTietSanPham;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IChiTietSanPhamService {

    Page<ChiTietSanPham> getAllPage(Pageable pageable);
    ChiTietSanPham findById(Integer idSP);

    List<ChiTietSanPham> getAll();

    void save(ChiTietSanPham chiTietSanPham);

    void saveAll(List<ChiTietSanPham> lstCTSP);

    void delete(ChiTietSanPham chiTietSanPham);

    ChiTietSanPham detail(Integer id);
}
