package com.example.duanxuonglv2_nhom5_nguyenvv4.controller;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.ChiTietSanPham;
import com.example.duanxuonglv2_nhom5_nguyenvv4.service.IChiTietSanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class HomeController {
    @Autowired
    private IChiTietSanPhamService chiTietSanPhamService;

    @GetMapping("/trang-chu/hien-thi")
    public String trangChuHienThi(Model model){
        List<ChiTietSanPham> lstCTSP = chiTietSanPhamService.getAll();
        model.addAttribute("lstCTSP", lstCTSP);
        return "/trang-chu/trang-chu";
    }

    @GetMapping("/trang-chu/detail/{id}")
    public String detail(Model model, @PathVariable("id") Integer id){
        ChiTietSanPham chiTietSanPham= chiTietSanPhamService.detail(id);
        model.addAttribute("ctsp",chiTietSanPham);
        List<ChiTietSanPham> lstCTSP = chiTietSanPhamService.getAll();
        model.addAttribute("lstCTSP", lstCTSP);
        return "/trang-chu/detail";
    }
}
