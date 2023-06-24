/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.repository;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.ThietKe;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ThietKeRepository extends JpaRepository<ThietKe, Integer> {

    ThietKe findByTen(String ten);

}
