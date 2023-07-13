/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.service;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.HoaDon;
import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.HoaDonChiTiet;
import com.example.duanxuonglv2_nhom5_nguyenvv4.repository.HoaDonChiTietRepository;
import com.example.duanxuonglv2_nhom5_nguyenvv4.repository.HoaDonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HoaDonService implements IHoaDonService {

    @Autowired
    private HoaDonRepository hoaDonRepository;

    @Autowired
    private HoaDonChiTietRepository hdctRepository;

    @Override
    public Page<HoaDon> getAllHoaDon(Pageable pageable) {
        return hoaDonRepository.findAll(pageable);
    }

    @Override
    public Page<HoaDonChiTiet> getAllHoaDonChiTiet(Pageable pageable) {
        return hdctRepository.findAll(pageable);
    }

    @Override
    public List<HoaDonChiTiet> findAllByHoaDon_Id(Integer id) {
        return hdctRepository.findAllByHoaDon_Id(id);
    }
}
