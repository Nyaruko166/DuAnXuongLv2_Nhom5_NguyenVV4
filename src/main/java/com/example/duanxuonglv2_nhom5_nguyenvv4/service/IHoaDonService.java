/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.service;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.ChiTietSanPham;
import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.HoaDon;
import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.HoaDonChiTiet;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IHoaDonService {

    Page<HoaDon> getAllHoaDon(Pageable pageable);
    Page<HoaDonChiTiet> getAllHoaDonChiTiet(Pageable pageable);

    List<HoaDonChiTiet> findAllByHoaDon_Id(Integer id);

    void save(HoaDon hoaDon);

    void saveCT(HoaDonChiTiet hoaDonChiTiet);

    void xacNhanHoaDon(Integer id);

    void huyHoaDon(Integer id);

}
