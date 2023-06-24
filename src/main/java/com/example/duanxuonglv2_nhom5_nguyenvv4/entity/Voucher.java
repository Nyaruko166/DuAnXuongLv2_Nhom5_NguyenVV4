/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.entity;

import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.sql.Date;

@Entity
@Table(name = "voucher")
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Voucher {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten", columnDefinition = "nvarchar")
    private String ten;

    @Column(name = "ngayBatDau")
    private Date ngayBatDau;

    @Column(name = "ngayKetThuc")
    private Date ngayKetThuc;

    @Column(name = "donToiThieu")
    private BigDecimal donToiThieu;

    @Column(name = "giamToiDa")
    private BigDecimal giamToiDa;

    @Column(name = "mucPhanTramGiam")
    private Float mucPhanTramGiam;

    @Column(name = "mucGiamTienMat")
    private BigDecimal mucGiamTienMat;

    @Column(name = "trangThai")
    private Integer trangThai;
    
}
