/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.service;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.TaiKhoan;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface ITaiKhoanService {

    Page<TaiKhoan> getAllTaiKhoan(Pageable pageable);
}
