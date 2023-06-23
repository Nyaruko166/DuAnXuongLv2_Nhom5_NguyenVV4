package com.example.duanxuonglv2_nhom5_nguyenvv4.entity;

import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;

@Entity
@Table(name = "gioHangChiTiet")
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class GioHangChiTiet {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "soLuong")
    private Integer soLuong;

    @Column(name = "donGia")
    private BigDecimal donGia;

    @Column(name = "donGiaKhiGiam")
    private BigDecimal donGiaKhiGiam;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idGioHang", referencedColumnName = "id")
    private GioHang gioHang;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idChiTietSanPham", referencedColumnName = "id")
    private ChiTietSanPham chiTietSanPham;

}
