package com.example.duanxuonglv2_nhom5_nguyenvv4.entity;

import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.sql.Date;

@Entity
@Table(name = "hoaDonChiTiet")
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class HoaDonChiTiet {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "soLuong")
    private Integer soLuong;

    @Column(name = "donGia")
    private BigDecimal donGia;

    @Column(name = "giaBan")
    private BigDecimal giaBan;

    @Column(name = "thanhTien")
    private BigDecimal thanhTien;

    @Column(name = "trangThai")
    private Integer trangThai;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idHoaDon", referencedColumnName = "id")
    private HoaDon hoaDon;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idChiTietSanPham", referencedColumnName = "id")
    private ChiTietSanPham chiTietSanPham;

}
