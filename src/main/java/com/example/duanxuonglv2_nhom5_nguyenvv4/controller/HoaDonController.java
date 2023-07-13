/*
 * Copyright (c) 2023. Nyaruko.
 */

package com.example.duanxuonglv2_nhom5_nguyenvv4.controller;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.HoaDon;
import com.example.duanxuonglv2_nhom5_nguyenvv4.service.IHoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hoa-don")
public class HoaDonController {

    @Autowired
    private IHoaDonService hoaDonService;

    @GetMapping
    public String view(Model model, @RequestParam(value = "page", defaultValue = "1") int page) {

        Page<HoaDon> pageHD;
        if (page < 1) page = 1;
        Pageable pageable = PageRequest.of(page - 1, 5);
        pageHD = hoaDonService.getAllHoaDon(pageable);

        model.addAttribute("page", pageHD);

        return "quan-tri/hoa-don/hoa-don";
    }
}
