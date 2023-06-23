package com.example.duanxuonglv2_nhom5_nguyenvv4.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "diaChi")
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class DiaChi {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "tinhThanh")
    private String tinhThanh;

    @Column(name = "quanHuyen")
    private String quanHuyen;

    @Column(name = "phuongXa")
    private String phuongXa;

    @Column(name = "diaChiCuThe")
    private String diaChiCuThe;

    @Column(name = "trangThaiMacDinh")
    private Integer trangThaiMacDinh;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idTaiKhoan", referencedColumnName = "id")
    private TaiKhoan taiKhoan;
}
