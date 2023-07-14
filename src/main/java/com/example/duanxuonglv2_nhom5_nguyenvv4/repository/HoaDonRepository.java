/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.repository;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.HoaDon;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface HoaDonRepository extends JpaRepository<HoaDon, Integer> {
    @Modifying
    @Transactional
    @Query("UPDATE HoaDon hd SET hd.trangThai = 1 WHERE hd.id = :id")
    void xacNhanHoaDon(@Param("id") Integer id);

    @Modifying
    @Transactional
    @Query("UPDATE HoaDon hd SET hd.trangThai = 10 WHERE hd.id = :id")
    void huyHoaDon(@Param("id") Integer id);
}
