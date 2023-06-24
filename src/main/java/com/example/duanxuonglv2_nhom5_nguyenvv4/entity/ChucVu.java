/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.entity;

import jakarta.persistence.*;
import lombok.*;

import java.sql.Date;

@Entity
@Table(name = "chucVu")
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class ChucVu {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten", columnDefinition = "nvarchar")
    private String ten;

    @Column(name = "trangThai")
    private Integer trangThai;

}
