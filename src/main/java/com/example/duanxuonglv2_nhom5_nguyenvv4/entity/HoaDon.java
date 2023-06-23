package com.example.duanxuonglv2_nhom5_nguyenvv4.entity;

import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.sql.Date;

@Entity
@Table(name = "hoaDon")
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class HoaDon {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "tongTien")
    private BigDecimal tongTien;

    @Column(name = "tenNguoiNhan")
    private String tenNguoiNhan;

    @Column(name = "diaChi")
    private String diaChi;

    @Column(name = "soDienThoai")
    private String soDienThoai;

    @Column(name = "ghiChu")
    private String ghiChu;

    @Column(name = "ngayTao")
    private Date ngayTao;

    @Column(name = "ngayDatHang")
    private Date ngayDatHang;

    @Column(name = "ngayGiaoHang")
    private Date ngayGiaoHang;

    @Column(name = "ngayThanhToan")
    private Date ngayThanhToan;

    @Column(name = "trangThai")
    private Integer trangThai;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idHinhThucThanhToan", referencedColumnName = "id")
    private HinhThucThanhToan hinhThucThanhToan;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idNhanVien", referencedColumnName = "id")
    private NhanVien nhanVien;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idKhachHang", referencedColumnName = "id")
    private KhachHang khachHang;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idVoucher", referencedColumnName = "id")
    private Voucher voucher;
}
