package com.example.duanxuonglv2_nhom5_nguyenvv4.entity;

import jakarta.persistence.*;
import lombok.*;

import java.sql.Date;

@Entity
@Table(name = "taiKhoan")
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class TaiKhoan {

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

    @Column(name = "email")
    private String email;

    @Column(name = "soDienThoai")
    private String soDienThoai;

    @Column(name = "matKhau")
    private String matKhau;

    @Column(name = "gioiTinh")
    private Boolean gioiTinh;

    @Column(name = "ngayTao")
    private Date ngayTao;

    @Column(name = "ngaySua")
    private Date ngaySua;

    @Column(name = "trangThai")
    private Integer trangThai;
}
