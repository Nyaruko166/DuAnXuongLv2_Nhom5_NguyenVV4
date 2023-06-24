/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.service;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.ChiTietSanPham;

import java.util.List;

public interface IChiTietSanPhamService {

    List<ChiTietSanPham> getAll();

    void save(ChiTietSanPham chiTietSanPham);

    void saveAll(List<ChiTietSanPham> lstCTSP);

    void delete(ChiTietSanPham chiTietSanPham);

    ChiTietSanPham detail(Integer id);
}
