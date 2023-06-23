package com.example.duanxuonglv2_nhom5_nguyenvv4.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "hinhThucThanhToan")
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class HinhThucThanhToan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "kieuThanhToan")
    private String kieuThanhToan;

    @Column(name = "trangThai")
    private Integer trangThai;

}
