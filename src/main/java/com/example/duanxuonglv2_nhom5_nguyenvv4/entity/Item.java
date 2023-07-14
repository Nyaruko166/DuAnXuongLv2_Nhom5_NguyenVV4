package com.example.duanxuonglv2_nhom5_nguyenvv4.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class Item {
    private Integer idCtsp;

    private String tenSanPham;

    private String tenChatLieu;

    private String tenMauSac;

    private String tenLoaiSanPham;

    private String tenNsx;

    private String tenKichCo;

    private String tenThietKe;

    private String tenFormDang;

    private Integer soLuong;

    private BigDecimal donGia;
}
