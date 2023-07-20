/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.controller;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.*;
import com.example.duanxuonglv2_nhom5_nguyenvv4.repository.*;
import com.example.duanxuonglv2_nhom5_nguyenvv4.service.IChiTietSanPhamService;
import com.example.duanxuonglv2_nhom5_nguyenvv4.utils.ExcelUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/ctsp")
public class ChiTietSanPhamController {

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

    @Autowired
    ExcelUtil excelUtil;

    @GetMapping
    public String view(Model model, @RequestParam(value = "page", defaultValue = "1") int page) {
        Page<ChiTietSanPham> pageCTSP;
        if (page < 1) page = 1;
        Pageable pageable = PageRequest.of(page - 1, 10);
        pageCTSP = chiTietSanPhamService.getAllPage(pageable);

        model.addAttribute("page", pageCTSP);
        return "quan-tri/san-pham/ctsp";
    }

    @GetMapping("/view-add")
    public String viewAdd(Model model) {
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
        return "quan-tri/san-pham/view-add-ctsp";
    }

    @PostMapping("/add")
    public String add(Model model, @ModelAttribute("ctsp") ChiTietSanPham ctsp, RedirectAttributes mess) {

        java.util.Date date = new java.util.Date();
        java.sql.Date sqlDate = new java.sql.Date(date.getTime());

        ctsp.setNgayTao(sqlDate);
        ctsp.setNgaySua(sqlDate);

        chiTietSanPhamService.save(ctsp);
        mess.addFlashAttribute("mess", "Thêm thành công");
//        model.addAttribute("mess", "Thêm thành công!");
        return "redirect:/ctsp";
    }

    @PostMapping("/import")
    public String importExcel(Model model, @RequestParam("excel") MultipartFile excelImport,RedirectAttributes mess) throws IOException {
        if (excelUtil.validateExcel(excelImport)) {
            String fileName = StringUtils.cleanPath(excelImport.getOriginalFilename());
            excelUtil.copyFile(excelImport, fileName);
            String path = "./src/main/webapp/uploads/" + fileName;
            List<ChiTietSanPham> lstCTSP = excelUtil.readExcel(path);
            chiTietSanPhamService.saveAll(lstCTSP);
            mess.addFlashAttribute("mess", "Import từ excel thành công!!");
        } else {
            mess.addFlashAttribute("err", "File sai định dạng!!");
        }
        return "redirect:/ctsp";
    }
}
