/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.controller;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.ChiTietSanPham;
import com.example.duanxuonglv2_nhom5_nguyenvv4.service.IChiTietSanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/ctsp")
public class ChiTietSanPhamConTroller {

    @Autowired
    private IChiTietSanPhamService chiTietSanPhamService;

    @GetMapping
    public String view(Model model) {
        List<ChiTietSanPham> lstCTSP = chiTietSanPhamService.getAll();
        model.addAttribute("lstCTSP", lstCTSP);
        return "ctsp/view-ctsp";
    }

}
