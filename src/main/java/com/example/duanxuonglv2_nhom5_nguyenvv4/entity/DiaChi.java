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

    @Column(name = "diaChi")
    private String diaChi;

    @Column(name = "soDienThoai")
    private String soDienThoai;

    @Column(name = "trangThaiMacDinh")
    private Integer trangThaiMacDinh;

}
