package com.example.duanxuonglv2_nhom5_nguyenvv4.controller;

import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.ChiTietSanPham;
import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.HoaDon;
import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.HoaDonChiTiet;
import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.Item;
import com.example.duanxuonglv2_nhom5_nguyenvv4.entity.SessionCart;
import com.example.duanxuonglv2_nhom5_nguyenvv4.service.ChiTietSanPhamService;
import com.example.duanxuonglv2_nhom5_nguyenvv4.service.HoaDonService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

@Controller
public class GioHangController {
    @Autowired
    private HttpSession httpSession;

    @Autowired
    private ChiTietSanPhamService chiTietSanPhamService;

    @Autowired
    private HoaDonService hoaDonService;

    @GetMapping("/gio-hang/hien-thi")
    public String viewCart(Model model) {
        SessionCart cart = (SessionCart) httpSession.getAttribute("cart");
        if (cart != null) {
            ArrayList<Item> listItem = cart.getItems();
            model.addAttribute("listItem", listItem);
            BigDecimal tongGia = BigDecimal.ZERO;
            for (Item item : listItem) {
                tongGia = tongGia.add(item.getDonGia().multiply(BigDecimal.valueOf(item.getSoLuong())));
            }
            model.addAttribute("tongGia", tongGia);
        }
        return "gio-hang/gio-hang";
    }

    @GetMapping("/add-to-cart/{id}")
    public String addToCart(@PathVariable("id") Integer id) {
        ChiTietSanPham chiTietSanPham = chiTietSanPhamService.detail(id);
        Item item = new Item(chiTietSanPham.getId(), chiTietSanPham.getSanPham().getTen(),
                chiTietSanPham.getChatLieu().getTen(), chiTietSanPham.getMauSac().getTen(),
                chiTietSanPham.getLoaiSanPham().getTen(), chiTietSanPham.getNsx().getTen(),
                chiTietSanPham.getKichCo().getTen(), chiTietSanPham.getThietKe().getTen(),
                chiTietSanPham.getFormDang().getTen(), 1, chiTietSanPham.getGiaBan());
        SessionCart cartSession = (SessionCart) httpSession.getAttribute("cart");
        if (cartSession == null) {
            SessionCart cart = new SessionCart();
            ArrayList<Item> listItem = new ArrayList<>();
            listItem.add(item);
            cart.setItems(listItem);
            httpSession.setAttribute("cart", cart);
        } else {
            SessionCart cart = (SessionCart) httpSession.getAttribute("cart");
            ArrayList<Item> listItem = cart.getItems();
            for (Item item1 : listItem) {
                if (item1.getIdCtsp().equals(id)) {
                    item1.setSoLuong(item1.getSoLuong() + 1);
                    return "redirect:/trang-chu/hien-thi";
                }
            }
            listItem.add(item);
        }
        return "redirect:/trang-chu/hien-thi";
    }

    @GetMapping("/gio-hang/dat-hang")
    public String datHang() {
        SessionCart cart = (SessionCart) httpSession.getAttribute("cart");
        Date date = new Date();
        java.sql.Date sqlDate = new java.sql.Date(date.getTime());
        ArrayList<Item> listItem = cart.getItems();
        BigDecimal tongTien = BigDecimal.ZERO;
        for (Item item : listItem) {
            tongTien = tongTien.add(item.getDonGia().multiply(BigDecimal.valueOf(item.getSoLuong())));
        }
        HoaDon hoaDon = new HoaDon();
        hoaDon.setTenNguoiNhan("Tuan");
        hoaDon.setDiaChi("Ha Noi");
        hoaDon.setSoDienThoai("0974856721");
        hoaDon.setTongTien(tongTien);
        hoaDon.setNgayTao(sqlDate);
        hoaDon.setNgayDatHang(sqlDate);
        hoaDon.setTrangThai(0);
        hoaDonService.save(hoaDon);
        for (Item item : listItem) {
            HoaDonChiTiet hoaDonChiTiet = new HoaDonChiTiet();
            hoaDonChiTiet.setHoaDon(hoaDon);
            hoaDonChiTiet.setChiTietSanPham(chiTietSanPhamService.detail(item.getIdCtsp()));
            hoaDonChiTiet.setSoLuong(item.getSoLuong());
            hoaDonChiTiet.setDonGia(item.getDonGia());
            hoaDonService.saveCT(hoaDonChiTiet);
        }
        listItem.clear();
        return "redirect:/trang-chu/hien-thi";
    }

    @GetMapping("/gio-hang/remove-item/{id}")
    public String removeItem(@PathVariable("id") Integer id) {
        SessionCart cart = (SessionCart) httpSession.getAttribute("cart");
        ArrayList<Item> listItem = cart.getItems();
        for (Item item : listItem) {
            if (item.getIdCtsp().equals(id)) {
                listItem.remove(item);
                break;
            }
        }
        return "redirect:/gio-hang/hien-thi";
    }
}
