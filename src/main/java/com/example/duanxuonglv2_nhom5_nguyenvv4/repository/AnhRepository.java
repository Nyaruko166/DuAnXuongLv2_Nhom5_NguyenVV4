package com.example.duanxuonglv2_nhom5_nguyenvv4.repository;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.Anh;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AnhRepository extends JpaRepository<Anh, Integer>{
}
