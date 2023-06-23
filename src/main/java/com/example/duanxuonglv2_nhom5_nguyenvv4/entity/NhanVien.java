package com.example.duanxuonglv2_nhom5_nguyenvv4.entity;

import jakarta.persistence.*;
import lombok.*;

import java.sql.Date;

@Entity
@Table(name = "nhanVien")
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class NhanVien {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten")
    private String ten;

    @Column(name = "ngaySinh")
    private Date ngaySinh;

    @Column(name = "gioiTinh")
    private Boolean gioiTinh;

    @Column(name = "diaChi")
    private String diaChi;

    @Column(name = "soDienThoai")
    private String soDienThoai;

    @Column(name = "email")
    private String email;

    @Column(name = "matKhau")
    private String matKhau;

    @Column(name = "trangThai")
    private Integer trangThai;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idChucVu", referencedColumnName = "id")
    private ChucVu chucVu;
}
