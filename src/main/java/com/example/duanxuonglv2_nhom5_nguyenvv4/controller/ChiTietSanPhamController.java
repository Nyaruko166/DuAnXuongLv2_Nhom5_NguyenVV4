/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.controller;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.*;
import com.example.duanxuonglv2_nhom5_nguyenvv4.repository.*;
import com.example.duanxuonglv2_nhom5_nguyenvv4.service.IChiTietSanPhamService;
import com.example.duanxuonglv2_nhom5_nguyenvv4.utils.ExcelUtil;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

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
        return "quan-tri/ctsp/view-ctsp";
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

    @PostMapping("/excel/import")
    public String importExcel(Model model, @RequestParam("excel") MultipartFile excelImport) throws IOException {
        if (excelUtil.validateExcel(excelImport)) {
            String fileName = StringUtils.cleanPath(excelImport.getOriginalFilename());
            excelUtil.copyFile(excelImport, fileName);
            String path = "./src/main/webapp/uploads/" + fileName;
            List<ChiTietSanPham> lstCTSP = excelUtil.readExcel(path);
            chiTietSanPhamService.saveAll(lstCTSP);
            model.addAttribute("mess", "Import từ excel thành công!!");
        } else {
            model.addAttribute("err", "File sai định dạng!!");
        }
        return view(model);
    }
}
