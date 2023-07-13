package com.example.duanxuonglv2_nhom5_nguyenvv4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GioHangController {
    @GetMapping("/gio-hang/hien-thi")
    public String hienThiGioHang(){
        return "/gio-hang/gio-hang";
    }
}
