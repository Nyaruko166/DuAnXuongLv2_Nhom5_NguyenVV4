/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.service;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.TaiKhoan;
import com.example.duanxuonglv2_nhom5_nguyenvv4.repository.TaiKhoanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class TaiKhoanService implements ITaiKhoanService {

    @Autowired
    private TaiKhoanRepository taiKhoanRepository;

    @Override
    public Page<TaiKhoan> getAllTaiKhoan(Pageable pageable) {
        return taiKhoanRepository.findAll(pageable);
    }
}
