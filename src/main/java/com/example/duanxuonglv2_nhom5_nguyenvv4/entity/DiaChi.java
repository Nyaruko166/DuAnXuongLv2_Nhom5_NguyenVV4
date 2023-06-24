/*
 * Copyright (c) 2023. Nyaruko.
 */

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

    @Column(name = "tinhThanh", columnDefinition = "nvarchar")
    private String tinhThanh;

    @Column(name = "quanHuyen", columnDefinition = "nvarchar")
    private String quanHuyen;

    @Column(name = "phuongXa", columnDefinition = "nvarchar")
    private String phuongXa;

    @Column(name = "diaChiCuThe", columnDefinition = "nvarchar")
    private String diaChiCuThe;

    @Column(name = "trangThaiMacDinh")
    private Integer trangThaiMacDinh;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idTaiKhoan", referencedColumnName = "id")
    private TaiKhoan taiKhoan;
}
