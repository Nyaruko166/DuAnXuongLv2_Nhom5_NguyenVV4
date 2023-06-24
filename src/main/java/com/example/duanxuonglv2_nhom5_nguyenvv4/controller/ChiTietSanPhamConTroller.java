/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.controller;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.*;
import com.example.duanxuonglv2_nhom5_nguyenvv4.repository.*;
import com.example.duanxuonglv2_nhom5_nguyenvv4.service.IChiTietSanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.Date;
import java.util.List;

@Controller
@RequestMapping("/ctsp")
public class ChiTietSanPhamConTroller {

    @Autowired
    private IChiTietSanPhamService chiTietSanPhamService;

    @Autowired
    private ChatLieuRepository chatLieuRepository;

    @Autowired
    private FormDangRepository formDangRepository;

    @Autowired
    private KichCoRepository kichCoRepository;

    @Autowired
    private LoaiSanPhamRepository loaiSanPhamRepository;

    @Autowired
    private MauSacRepository mauSacRepository;

    @Autowired
    private NSXRepository nsxRepository;

    @Autowired
    private SanPhamRepository sanPhamRepository;

    @Autowired
    private ThietKeRepository thietKeRepository;


    @GetMapping
    public String view(Model model) {
        List<ChiTietSanPham> lstCTSP = chiTietSanPhamService.getAll();
        List<ChatLieu> lstCL = chatLieuRepository.findAll();
        List<FormDang> lstFD = formDangRepository.findAll();
        List<KichCo> lstKC = kichCoRepository.findAll();
        List<LoaiSanPham> lstLoai = loaiSanPhamRepository.findAll();
        List<MauSac> lstMS = mauSacRepository.findAll();
        List<NSX> lstNSX = nsxRepository.findAll();
        List<SanPham> lstSP = sanPhamRepository.findAll();
        List<ThietKe> lstTK = thietKeRepository.findAll();
        model.addAttribute("ctsp", new ChiTietSanPham());
        model.addAttribute("lstCL", lstCL);
        model.addAttribute("lstFD", lstFD);
        model.addAttribute("lstKC", lstKC);
        model.addAttribute("lstLoai", lstLoai);
        model.addAttribute("lstMS", lstMS);
        model.addAttribute("lstNSX", lstNSX);
        model.addAttribute("lstSP", lstSP);
        model.addAttribute("lstTK", lstTK);
        model.addAttribute("lstCTSP", lstCTSP);
        return "ctsp/view-ctsp";
    }

    @PostMapping("/add")
    public String add(Model model, @ModelAttribute("ctsp") ChiTietSanPham ctsp) {

        java.util.Date date = new java.util.Date();
        java.sql.Date sqlDate = new java.sql.Date(date.getTime());

        ctsp.setNgayTao(sqlDate);
        ctsp.setNgaySua(sqlDate);

        chiTietSanPhamService.save(ctsp);

        model.addAttribute("mess", "Thêm thành công!");
        return view(model);
    }



}
